proc isDivisibleBy3(x: int): bool =
    return x mod 3 == 0

proc filterMultiplesOf3(a: seq[int]): seq[int] =
    # result = @[] #- Line is not needed, implicit
    for i in a:
        if i.isDivisibleBy3():
            result.add(i)

let
    g = @[2, 6, 2, 4, 6, 8, 2, 4, 9, 1, 5]
    h = @[7, 6, 5, 4, 3]
    i = @[521, 62353, 6902, 2984, 2120]

echo filterMultiplesOf3(g)
echo h.filterMultiplesOf3()
echo filterMultiplesOf3 i
