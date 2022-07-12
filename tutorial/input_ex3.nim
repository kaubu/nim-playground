#[
    Ask a user for a string they want to have reversed. Create a procedure
    which takes a string and returns a reversed version. For example, if user
    types Nim-lang, the procedure should return gnal-miN. (Hint: use indexing
    and countdown)
]#

proc getInput(query: string): string =
    stdout.write(query)
    return stdin.readLine()

proc reverseString(normalString: string): string =
    for c in countdown(normalString.len - 1, 0):
        result.add(normalString[c])

let stringNormal = getInput("What string do you want reversed? ")

echo "\nReversed: ", reverseString(stringNormal)