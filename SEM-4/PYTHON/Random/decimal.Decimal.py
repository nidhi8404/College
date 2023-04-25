# to construct a Decimal from a float and a Decimal from a string. Also represent the decimal value as a tuple. Use decimal.Decimal
import decimal
print("Construct a Decimal from a float:")
pi_val = decimal.Decimal(3.14159)
print(pi_val)
print(pi_val.as_tuple())
print("\nConstruct a Decimal from a string:")
num_str = decimal.Decimal("123.25")
print(num_str)
print(num_str.as_tuple())

#to round a decimal value to the nearest multiple of 0.10, unless already an exact multiple of 0.05. Use decimal.Decimal

from decimal import Decimal
def round_to_10_cents(x):
    remainder = x.remainder_near(Decimal('0.10'))
    if abs(remainder) == Decimal('0.05'):
        return x
    else:
        return x - remainder
# Test code.
for x in range(80, 120):
    y = Decimal(x) / Decimal('1E2')
    print("{0} rounds to {1}".format(y, round_to_10_cents(y)))

