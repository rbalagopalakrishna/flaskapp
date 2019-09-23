import unittest
import app

class TestHello(unittest.TestCase):

    def setUp(self):
        app.app.testing = True
        self.app = app.app.test_client()

    # test 1
    def test_hello_hello_a(self):
        rv = self.app.get('/')
        self.assertEqual(rv.status, '200 OK')
        self.assertEqual(rv.data, b'Hello Bala!')

    #test 2
    def test_hello_a(self):
        result = app.hello()
        self.assertEqual(result, 'Hello Bala!')

    # test 3
    def test_hello_hello_b(self):
        rv = self.app.get('/')
        self.assertEqual(rv.status, '200 OK')
        self.assertEqual(rv.data, b'Hello Bala!')

    #test 4
    def test_hello_b(self):
        result = app.hello()
        self.assertEqual(result, 'Hello Bala!')

if __name__ == '__main__':
    unittest.main()
