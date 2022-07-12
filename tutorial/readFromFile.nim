import strutils

let contents = readFile("people.txt")
echo contents

let people = contents.splitLines()
echo people

