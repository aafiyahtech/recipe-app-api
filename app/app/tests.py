"""
sample test
"""

from django.test import SimpleTestCase
from app import calc

class CalcTest(SimpleTestCase):
    """test the calc module"""
    
    def test_addnumbes(self):
        """test adding numbers together"""
        res = calc.add(5,6)

        self.assertEqual(res,11)

    def test_substract_number(self):
        res = calc.substract(4,2)

        self.assertEquals(res,2)