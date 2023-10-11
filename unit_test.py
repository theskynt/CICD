import unittest
import app.app as app

class TestApp(unittest.TestCase):
    
    def test_when_x_is_17(self):
        self.assertEqual(app.is_prime(17), 'True')

    def test_when_x_is_36(self):
        self.assertEqual(app.is_prime(36), 'False')
    
    def test_when_x_is_13219(self):
        self.assertEqual(app.is_prime(13219), 'True')


if __name__ == '__main__':
    unittest.main()