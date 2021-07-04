resource "google_compute_disk" "nfsdisk" {
  name  = "seconddisk"
  project = "sidecar-314513"
  type  = "pd-standard"
  zone  = "europe-west2-a"

  size = "1048"
}




resource "google_compute_instance" "testinstance1" {
  project = "sidecar-314513"
  name = "testinstance1"
  machine_type = "n1-standard-2"
  zone = "europe-west2-a"

  tags = [
    "test"]

  boot_disk {
    initialize_params {
      image = "ubuntu-1804-bionic-v20200716"
    }
  }


  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

 attached_disk {
   source = google_compute_disk.nfsdisk.self_link
   device_name = google_compute_disk.nfsdisk.name
   mode         = "READ_WRITE"
 }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  network_interface {

    subnetwork_project = "sidecar-314513"
    subnetwork = "projects/sidecar-314513/regions/europe-west2/subnetworks/internal-network"
  }

  metadata_startup_script = "${file("nfs.sh")}"

}




resource "google_compute_firewall" "default" {
   project = "sidecar-314513"
   name = "nfsfirewall"
   network = "default"

   allow {
     protocol = "icmp"
   }
  allow {
    protocol = "tcp"
    ports = ["22"]
  }

  source_ranges = ["0.0.0.0/0"]

}

resource "google_compute_firewall" "internal"  {
  project = "sidecar-314513"
  name = "nfsfirewall-internal"
  network = "internal-network"

  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports = ["0-65000"]
  }


  source_ranges = ["0.0.0.0/0"]

}

