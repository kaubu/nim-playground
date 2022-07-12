# Collatz
import strutils as str # Str Utils

echo "Pick a number for the Collatz conjecture: "
var currentNumber: int

let initialNumber = stdin.readLine()
currentNumber = str.parseInt(initialNumber)

while currentNumber != 1:    
    # echo("Current number: ", currentNumber)

    case currentNumber mod 2
    of 0: # Even
        let oldNumber = currentNumber
        currentNumber = currentNumber div 2
        echo(oldNumber, " / 2 = ", currentNumber)
    else: # Odd
        let oldNumber = currentNumber
        currentNumber *= 3
        currentNumber += 1
        echo("(", oldNumber, " * 3) + 1 = ", currentNumber)
