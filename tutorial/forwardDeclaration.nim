const compileBadCode = false

when compileBadCode:
    echo 5.plus(10) # error

    proc plus(x, y: int): int =
        return x + y

# Forward declaration
proc plus(x, y: int): int

echo 5.plus(10)

proc plus(x, y: int): int =
    return x + y
