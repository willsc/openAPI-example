# coding: utf-8

from __future__ import absolute_import

from flask import json
from six import BytesIO

from swagger_server.test import BaseTestCase


class TestPathController(BaseTestCase):
    """PathController integration test stubs"""

    def test_get_copy_bucket_path(self):
        """Test case for get_copy_bucket_path

        Copy
        """
        response = self.client.open(
            '/copy{bucket_path}'.format(bucket_path='bucket_path_example'),
            method='GET')
        self.assert200(response,
                       'Response body is : ' + response.data.decode('utf-8'))


if __name__ == '__main__':
    import unittest
    unittest.main()
