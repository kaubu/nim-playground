var myArray: array[10, int]

for i in 0 .. 9:
    myArray[i] = (i + 1) * 10

for elem in myArray:
    if elem mod 20 == 0:
        echo elem

for i in 0..9:
    if myArray[i] mod 2 == 0:
        myArray[i] *= 5

echo myArray
