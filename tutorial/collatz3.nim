# Collatz 3
# echo "Pick a number for the Collatz conjecture: "
# var currentNumber: int

# let initialNumber = stdin.readLine()
# currentNumber = str.parseInt(initialNumber)

type
    CollatzNumber = range[2..100] # Starting number
    CollatzLen = int
    Collatz = tuple
        initialNumber: CollatzNumber
        length: CollatzLen

var collatz: seq[Collatz]

for i in 2..100:
    var currentNumber = i
    var collatzSequence: seq[int] = @[currentNumber]

    while currentNumber != 1:    
        case currentNumber mod 2
        of 0: # Even
            currentNumber = currentNumber div 2
            # echo(oldNumber, " / 2 = ", currentNumber)
            collatzSequence.add(currentNumber)
        else: # Odd
            currentNumber *= 3
            currentNumber += 1
            # echo("(", oldNumber, " * 3) + 1 = ", currentNumber)
            collatzSequence.add(currentNumber)
    
    let col: Collatz = (
            initialNumber: i.CollatzNumber,
            length: collatzSequence.len.CollatzLen
    )
    
    collatz.add(col)

var highestIndex = 0
var highestValue = collatz[0].length

for i, collatzObj in collatz:
    if collatzObj.length > highestValue:
        highestIndex = i
        highestValue = collatzObj.length

echo "The starting number with the highest length is ", collatz[highestIndex]
echo "This starting number produced a length of ", highestValue, " numbers"