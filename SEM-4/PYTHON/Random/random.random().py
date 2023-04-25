import random
print("Construct a seeded random number generator:")
print(random.Random().random())
print(random.Random(0).random())
print("\nGenerate a float between 0 and 1, excluding 1:")
print(random.random())

