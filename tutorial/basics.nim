const num: int = 42

let i = 7

case i
of 0:
    echo "Zero"
of 1, 2, 3:
    echo "1 to 3"
of 4..7:
    echo "4 to 7"
of 9:
    echo "NINERS"
else: discard
