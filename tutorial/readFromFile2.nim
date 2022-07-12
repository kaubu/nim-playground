import strutils

let contents = readFile("people.txt").strip()
echo contents

let people = contents.splitLines()
echo people

