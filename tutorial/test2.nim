# var
#     a: array[3, int] = [5, 2, 4]
#     b = [7, 2, 4]
#     d: array[7, string]

const m = 3
let n = 5

var
    a: array[m, char]
    # b: array[n, char]

var
    e1: seq[int] = @[]
    f = @[76, 24, 12]

f.add(52)
echo f
var e = newSeq[int]()

var
    g = @['x', 'y']
    h = @['1', '2', '3']

g.add('z')
echo g

h.add(g)
echo h

echo h[1 .. 3]
echo h[0 ..< 5]

# Tuples
let n1 = ("Banana", 2, 's')
echo n1

var o1 = (name: "Banana", weight: 2, rating: 'c')
var o12 = (
    name: "Orange",
    weight: 4,
    rating: 'a'
)

o1[1] = 7
o1.name = "Apple"
echo o1

