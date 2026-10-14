// SE4041 Practical 03 - Exercise 01: Functions

// Step 1 - A simple function
func greet() {
    print("Welcome to SE4041")
}

greet()

// Step 2 - Function with a parameter
func greetStudent(name: String) {
    print("Welcome \(name)")
}

greetStudent(name: "Amal")
greetStudent(name: "Nimali")
greetStudent(name: "Ruwan")

// Returning a value - "-> String" means the function returns a String
func grade(for mark: Int) -> String {
    if mark >= 50 {
        return "Pass"
    }
    return "Fail"
}

let gradeResult = grade(for: 68)
print(gradeResult)

// Activity 1
print("--- Activity 1 ---")
func calculateAverage(_ first: Double, _ second: Double, _ third: Double) -> Double {
    return (first + second + third) / 3
}

let average = calculateAverage(75, 82, 68)
print(average)

// Argument labels - "from"/"to" are used at the call site, "town"/"city" inside the function
print("--- Argument labels ---")
func travel(from town: String, to city: String) {
    print("Travelling from \(town) to \(city)")
}

travel(from: "Malabe", to: "Kandy")

// Removing an argument label with _
func double(_ number: Int) -> Int {
    return number * 2
}

print(double(10))

// Default parameter values
print("--- Default parameters ---")
func result(_ mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    }
    return "Fail"
}

print(result(68))
print(result(68, passMark: 75))

// Activity 2
print("--- Activity 2 ---")
func finalResult(mark: Int, passMark: Int = 50) -> String {
    if mark >= passMark {
        return "Pass"
    }
    return "Fail"
}

print(finalResult(mark: 45))                 // Fail - below the default pass mark of 50
print(finalResult(mark: 75))                 // Pass - uses the default pass mark
print(finalResult(mark: 75, passMark: 80))   // Fail - the default is overridden with 80
