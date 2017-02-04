"""
Your module documentation here
"""


class PrimeClass(object):
    """
    Prime Number Validator
    """

    def is_prime(self, num_int):
        """
        Return True with prime numbers, False in other case
        """
        # for definition prime number are bigger than 1
        if num_int == 1:
            # return False (No Prime)
            return False
        # Test all numbers in range 1 to num_int
        for num in range(2, num_int):
            # if found a valid division return False (No Prime)
            if (num_int % num) == 0:
                return False  # not is prime

        # Its Prime
        return True
