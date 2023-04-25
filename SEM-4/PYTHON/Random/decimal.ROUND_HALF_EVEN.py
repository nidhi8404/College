import decimal
print("Configure the rounding to round to the nearest, with ties going to the nearest even in")
decimal.getcontext().prec = 1
decimal.getcontext().rounding = decimal.ROUND_HALF_EVEN
print(decimal.Decimal(10) / decimal.Decimal(4))
