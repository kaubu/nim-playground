# Single line comment
#[ Multi-line
Comment
]#

var letter: char = 'n'
var lang = "N" & "im"
var nLength: int = len(lang)
var boat: float
var truth: bool = false

let legs = 400
let arms = 2_000
let aboutPi = 3.15

const debug = true
const compileBadCode = false

when compileBadCode:
    legs = legs + 1
    const input = readline(stdin)

discard 1 > 2

# Tuples
var child: tuple[name: string, age: int]
var today: tuple[sun: string, temp: float]

child = (name: "Rodriguez", age: 5)
today.sun = "Overcast"
today.temp = 32.5

var
    drinks: seq[string] # Basically arrays, but arrays are fixed length,
                        # so, like a vector

drinks = @["Water", "Juice", "Chocolate"]

drinks.add("Milk")

if "Milk" in drinks:
    echo "We have Milk and ", drinks.len - 1, " other drinks"

let myDrink = drinks[2] # Chocolate..?

# Defining own types
type 
    Name = string
    Age = int
    Person = tuple[name: Name, age: Age]
    AnotherSyntax = tuple
        fieldOne: string
        secondField: int

var john: Person = (name: "Jonathan B. Good", age: 48)
var newage: int = 18

john.age = newage

type
    Cash = distinct int # distinct making it incomptible with int
    Desc = distinct string # incompatible with string

var money: Cash = 100.Cash # Conversion
var description: Desc = "Interesting".Desc

var floatFromInt: float = 24.float

when compileBadCode:
    john.age = money
    john.name = description

type
    Color = enum cRed, CBlue, cGreen
    Direction = enum # Alternative formatting
        dNorth
        dWest
        dEast
        dSouth

var orient = dNorth
var pixel = cGreen

discard dNorth > dEast # Enums are usually an "ordinal" type, ordered

type
    DieFaces = range[1..20] # Inclusive range

var
    myRoll: DieFaces = 13

when compileBadCode:
    myRoll = 23

type
    RollCounter = array[DieFaces, int] # Ah, first item is the index type
                                        # Usually 
    DirNames = array[Direction, string]
    Truths = array[42..44, bool]
var
    counter: RollCounter
    directions: DirNames
    possible: Truths

possible = [false, false, false]# What...? 
                                #"Literal arrays are created with [V1,..,Vn]"

possible[42] = true

directions[dNorth] = "Ahh, the great north!"
directions[dWest] = "No, don't go there..."

myRoll = 6
counter[myRoll] += 1
counter[myRoll] += 1

var anotherArray = ["Default index", "starts at", "0"]

# Control flow
echo "Read any good books lately?"
case stdin.readLine()
of "no", "No":
    echo "Go to your local library."
of "yes", "Yes":
    echo "Carry on, then."
else:
    echo "That's great; I assume."

import strutils as str # Str utils
echo "I'm thinking of a number between 41 and 43. Guess which!"
let number: int = 42
var
    raw_guess: string
    guess: int
while guess != number:
    raw_guess = stdin.readLine()
    guess = str.parseInt(raw_guess)

    if guess == 1001:
        echo "AARARHHGHGHGHH!!!"
    elif guess > number:
        echo("Nope, too high.")
    elif guess < number:
        echo(guess, " is too low.")
    else:
        echo("Yeeehhaawww! WRONG.")

# Iteration
for i, elem in ["Yes", "No", "Maybe so"]:
    echo(elem, " is at index: ", i)

for k, v in items(
    @[(person: "You", power: 100), (person: "Me", power: 9001)]
):
    echo v

let myString = """an example
string to
play with
multiline raw string"""

for line in splitLines(myString):
    echo(line)

for i, c in myString: # index and character
    if i mod 2 == 0: continue # compact "if", if i is even
    elif c == 'X': break
    else: echo(c)

#
# Procedures
#
# Whatever they are

type Answer = enum aYes, aNo

proc ask(question: string): Answer =
    echo(question, " (y/n)")
    while true:
        case stdin.readLine()
        of "y", "Y", "yes", "Yes":
            return Answer.aYes
        of "n", "N", "no", "No":
            return Answer.aNo
        else: echo("Please be clear: yes or no")

proc addSugar(amount: int = 2) = # Default amount is 2, returns nothing
    assert(amount > 0 and amount < 9000, "Crazy sugar")
    for a in 1..amount:
        echo(a, " sugar...")

case ask("Would you like sugar in your tea?")
of aYes:
    addSugar(3)
of aNo:
    echo "Oh do take a little!"
    addSugar()

# No need for else, only yes and no are possible

