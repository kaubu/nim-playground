import strutils, sequtils, math

let
    strNums = readFile("numbers.txt").strip().splitLines()
    nums = strNums.map(parseFloat)

let
    sumNums = sum(nums)
    average = sumNums / float(nums.len)

echo sumNums
echo average
