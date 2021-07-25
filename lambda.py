a = [345, 123, 456, 23, 64, 25, 768, 243, 87, 12]
b = list(map(lambda x: round(x * 1.609,2), a))

print(*b)