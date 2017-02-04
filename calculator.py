"""
Your module documentation here
"""


class CalculatorClass(object):
    """
    Sum
    """

    def sum(self, num_list):
        """
        Sum all number in this line
        """
        total = 0
        # sum all numbers in list
        for num in num_list:
            total = total + num

        # return sum
        return total
