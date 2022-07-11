echo("What is your name?")
let name = stdin.readLine()

for c in name:
    case c:
    of 'a', 'e', 'i', 'o', 'u': echo(c)
    else: discard

