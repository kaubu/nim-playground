for i in 1..30:
    if i mod 3 == 0:
        stdout.write(", fizz")
    elif i mod 5 == 0:
        stdout.write(", buzz")
    elif i mod 15 == 0:
        stdout.write(", fizzbuzz")
    elif i == 1:
        stdout.write(i)
    else:
        stdout.write(", ", i)
echo()
