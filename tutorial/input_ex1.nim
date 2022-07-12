#[
    Ask a user for their height and weight. Calculate their BMI. Report them
    the BMI value and the category.
]#

# BMI Calc
import strutils, math

proc getInput(query: string): string =
    stdout.write(query)
    return stdin.readLine()

proc getMetricBMI(height, weight: float): float =
    return weight / (height * height)

proc getImperialBMI(height, weight: float): float =
    return getMetricBMI(height, weight) * 703

proc getCategory(bmi: float): string =
    if bmi < 16.0: return "Underweight (Severe thinness)"
    elif bmi <= 16.9: return "Underweight (Moderate thinness)"
    elif bmi <= 18.4: return "Underweight (Mild thinness)"
    elif bmi <= 24.9: return "Normal range"
    elif bmi <= 29.9: return "Overweight (Pre-obese)"
    elif bmi <= 34.9: return "Obese (Class I)"
    elif bmi <= 39.9: return "Obese (Class II)"
    elif bmi >= 40.0: return "Obese (Class III)"
    else: return "Category error"

var system = getInput("""Will you use Metric (m/kg) or Imperial (in/lb)?
m/i: """)
var heightUnit: string
var weightUnit: string

while true:
    case system.toLowerAscii():
    of "m", "metric":
        system = "m"
        heightUnit = "meters"
        weightUnit = "kilograms"
        break
    of "i", "imperial":
        system = "i"
        heightUnit = "inches"
        weightUnit = "pounds"
        break

    echo "That's not a system!"
    system = getInput("""Will you use Metric (m/kg) or Imperial (in/lb)?
m/i: """)

let height = getInput("What is your height (" & heightUnit & ")? ")
    .parseFloat()
let weight = getInput("What is your weight (" & weightUnit & ")? ")
    .parseFloat()

var bmi: float

case system:
of "m":
    bmi = getMetricBMI(height, weight).round(1)
of "i":
    bmi = getImperialBMI(height, weight).round(1)

echo "\nYour BMI is: ", bmi
echo "Category: ", getCategory(bmi)