import unittest
import app

class TestHello(unittest.TestCase):

    def setUp(self):
        app.app.testing = True
        self.app = app.app.test_client()

#    def test_hello_hello(self):
#        rv = self.app.get('/')
#        self.assertEqual(rv.status, '200 OK')
#        self.assertEqual(rv.data, b'Hello Bala!')

    def test_hello(self):
        result = app.hello()
        self.assertEqual(result, 'Hello Bala!')

if __name__ == '__main__':
    unittest.main()
