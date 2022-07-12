import strutils

echo "Please enter your year of birth:"
let yearOfBirth = readLine(stdin).parseInt()

let age = 2022 - yearOfBirth

echo "You are ", age, " years old."

