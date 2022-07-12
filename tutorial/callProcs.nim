proc findMax(x: int, y: int): int =
    if x > y:
        return x
    else:
        return y

echo 5.findMax(2)
echo findMax(6, 8)

proc echoLanguageRating(language: string) =
    case language
    of "Nim", "nim", "NIM":
        echo language, " is the best language!"
    else:
        echo language, " might be a second-best language."

echoLanguageRating("Rust")
echoLanguageRating("C++")
echoLanguageRating("Nim")

#[
    Normally we can't allow parameters to be changed (mutable)
    We have to manually declare it with the var keyword
]#

const compileBadCode = false

when compileBadCode:
    # This errors
    proc changeArgument(argument: int) =
        argument += 5
    
    var ourVariable = 10
    changeArgument(10)

proc changeArgument(argument: var int) =
    argument += 5

var ourVariable = 10
changeArgument(ourVariable)
echo ourVariable
changeArgument(ourVariable)
echo ourVariable

var x = 100

# Can call variables outside of function
proc echoX() =
    echo x
    x += 1

echoX()
echoX()

let
    a = findMax(987, 789)
    b = findMax(123, 321)
    c = findMax(a, b)
    d = c.findMax 1042

echo a
echo b
echo c
echo d

