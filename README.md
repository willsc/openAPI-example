# Swagger generated server

## Overview
This server was generated by the [swagger-codegen](https://github.com/swagger-api/swagger-codegen) project. By using the
[OpenAPI-Spec](https://github.com/swagger-api/swagger-core/wiki) from a remote server, you can easily generate a server stub.  This
is an example of building a swagger-enabled Flask server.

This example uses the [Connexion](https://github.com/zalando/connexion) library on top of Flask.

## Requirements
Python 3.5.2+

## Usage
To run the server, please execute the following from the root directory:

```
pip3 install -r requirements.txt
python3 -m swagger_server
```

and open your browser to here:

```
http://localhost:8080/ui/
```

Your Swagger definition lives here:

```
http://localhost:8080/swagger.json
```

To launch the integration tests, use tox:
```
sudo pip install tox
tox
```

## Running with Docker

To run the server on a Docker container, please execute the following from the root directory:

```bash
# building the image
docker build -t swagger_server .

# starting up a container
docker run -p 8080:8080 swagger_server


```
```
1. Generate the API yaml 


openapi: 3.0.0
info:
  title: bucket-api
  version: '1.0'
  description: CRUD gcs bucket
servers:
  - url: 'http://localhost:3000'
paths:
  '/copy{bucket_path}':
    parameters:
      - schema:
          type: string
        name: bucket_path
        in: path
        required: true
    get:
      summary: Copy
      tags:
        - path
      responses:
        '200':
          description: OK
        '201':
          description: Created
        '400':
          description: Bad Request
      operationId: get-copy-bucket_path
  '/Delete{path}':
    get:
      summary: Del
      tags: []
      responses:
        '200':
          description: OK
        '201':
          description: Created
        '400':
          description: Bad Request
      operationId: get-Delete
    parameters:
      - schema:
          type: string
        name: path
        in: path
        required: true
  /list:
    get:
      summary: LIST
      tags: []
      responses:
        '200':
          description: OK
        '201':
          description: Created
        '400':
          description: Bad Request
      operationId: get-list
components:
  schemas: {}

```
```
  Ensure you load the required modules for the swagger server.
  pip3 install -r requirements.txt
```

```
❯ pip3 install -r requirements.txt
Collecting connexion==2.6.0
  Downloading connexion-2.6.0-py2.py3-none-any.whl (76 kB)
     |████████████████████████████████| 76 kB 6.3 MB/s
Collecting python_dateutil==2.6.0
  Downloading python_dateutil-2.6.0-py2.py3-none-any.whl (194 kB)
     |████████████████████████████████| 194 kB 14.9 MB/s
Requirement already satisfied: setuptools>=21.0.0 in /usr/local/lib/python3.9/site-packages (from -r requirements.txt (line 3)) (56.0.0)
Collecting requests>=2.9.1
  Using cached requests-2.25.1-py2.py3-none-any.whl (61 kB)
Requirement already satisfied: inflection>=0.3.1 in /usr/local/lib/python3.9/site-packages (from connexion==2.6.0->-r requirements.txt (line 1)) (0.5.1)
Collecting clickclick>=1.2
  Downloading clickclick-20.10.2-py2.py3-none-any.whl (7.4 kB)
Requirement already satisfied: PyYAML>=5.1 in /Users/cwills/Library/Python/3.9/lib/python/site-packages (from connexion==2.6.0->-r requirements.txt (line 1)) (5.4.1)
Collecting openapi-spec-validator>=0.2.4

Also ensure you run pip3 install 'connexion[swagger-ui] as the GUI will not start.
```

2.  generate the python flask server from the https://editor.swagger.io/ GUI  python-flask-server-generated.zip
   Unzip it and run python3 -m swagger_server from the directory above.
   
```
python3 -m swagger_server
```
```
The swagger_ui directory could not be found.
    Please install connexion with extra install: pip install connexion[swagger-ui]
    or provide the path to your local installation by passing swagger_path=<your path>

The swagger_ui directory could not be found.
    Please install connexion with extra install: pip install connexion[swagger-ui]
    or provide the path to your local installation by passing swagger_path=<your path>

 * Serving Flask app '__main__' (lazy loading)
 * Environment: production
   WARNING: This is a development server. Do not use it in a production deployment.
   Use a production WSGI server instead.
 * Debug mode: off
 * Running on all addresses.
   WARNING: This is a development server. Do not use it in a production deployment.
 * Running on http://192.168.1.211:8080/ (Press CTRL+C to quit)
```
```
3. Connect to GUI http://192.168.1.211:8080/ui/
```

   

The code for the method is here
```
❯ ls
Dockerfile                        bucket-api.yaml                   python-flask-server-generated.zip stoplight-studio-mac.dmg          tox.ini
README.md                         git_push.sh                       requirements.txt                  swagger_server
api_tutorial                      python-client-generated.zip       setup.py                          test-requirements.txt
❯ vi bucket-api.yaml
❯```
```  
```
❯ cd swagger_server
❯ ls
__init__.py  __main__.py  __pycache__  controllers  encoder.py   models       swagger      test         type_util.py util.py
❯ cd controllers
❯ ls
__init__.py                 __pycache__                 authorization_controller.py default_controller.py       path_controller.py
```
```  
❯ pwd
/Users/cwills/API-work/bucket-api/openAPI/swagger_server/controllers
❯ more path_controller.py

```
import connexion
import six
from swagger_server import util


def get_copy_bucket_path(bucket_path):  # noqa: E501
    """Copy

     # noqa: E501

    :param bucket_path:
    :type bucket_path: str

    :rtype: None
    """
    print("This is a test")
    return bucket_path

```

