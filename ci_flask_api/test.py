import unittest
from app import sum

class Test(unittest.TestCase):
    def test_sum(self):
        value = sum(4,5)
        self.assertEqual(value, 9)

if __name__ == '__main__':
    unittest.main()