#[
    Create a procedure findMax3 which will return the largest of three values.
]#

proc findMax3(x, y, z: int) =
    if y > x:
        if z > y:
            # z
            echo z
        else:
            # y
            echo y
    else:
        if x > z:
            # x
            echo x
        else:
            # z
            echo z

findMax3(6, 2, 4)
98.findMax3(54, 103)
789.findMax3 24, 109
