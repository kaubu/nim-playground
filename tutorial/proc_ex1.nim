#[
    Create a procedure which will greet a person (print "Hello <name>") based
    on the provided name. Create a sequence of names. Greet each person using
    the created procedure.
]#

proc greet(name: string) =
    echo "Hello, ", name, "."

proc greetPeople(names: seq[string]) =
    for name in names:
        greet(name)

const people: seq[string] = @[
    "Tom",
    "Dick",
    "Harry"
]

people.greetPeople()