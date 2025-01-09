"""
This module contains unittests for testing the `math.ldexp` function,
which computes x * (2**i).
"""
import unittest
import math


class TestLDEXP(unittest.TestCase):
    """
    A test suite for validating the behavior of the `math.ldexp` function.
    """

    def test_valid_input(self):
        """
        Test cases with valid positive inputs for the `math.ldexp` function.
        """
        self.assertEqual(math.ldexp(2, 3), 2 * 2**3)
        self.assertEqual(math.ldexp(3, 2), 3 * 2**2)

    def test_zero_exponent(self):
        """
        Test cases where the exponent is zero.
        The function should return the base value.
        """
        self.assertEqual(math.ldexp(10, 0), 10)
        self.assertEqual(math.ldexp(0, 0), 0)

    def test_zero_input(self):
        """
        Test cases where the base value is zero.
        The result should always be zero, regardless of the exponent.
        """
        self.assertEqual(math.ldexp(0, 1000), 0)
        self.assertEqual(math.ldexp(0, -1000), 0)

    def test_negative_input(self):
        """
        Test cases with negative base values and/or exponents for the `math.ldexp` function.
        """
        self.assertEqual(math.ldexp(-2, 3), -2 * 2**3)
        self.assertEqual(math.ldexp(2, -3), 2 * 2**-3)

    def test_large_input(self):
        """
        Test cases with large values for the base and/or exponent.
        """
        self.assertEqual(math.ldexp(10**10, 50), 10**10 * 2**50)


if __name__ == "__main__":
    unittest.main()
