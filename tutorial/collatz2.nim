# Collatz 2
import strutils as str # Str Utils

# echo "Pick a number for the Collatz conjecture: "
# var currentNumber: int

# let initialNumber = stdin.readLine()
# currentNumber = str.parseInt(initialNumber)

const hardNumber = 9

var currentNumber = hardNumber
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

echo "Collatz Sequence length: ", collatzSequence.len
echo "Sequence: ", collatzSequence