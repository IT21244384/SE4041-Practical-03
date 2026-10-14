// SE4041 Practical 03 - Exercise 03: Tuples
// A tuple groups several values so a function can return more than one result.

func summary(of marks: [Int]) -> (minimum: Int, maximum: Int, average: Double) {
    let total = marks.reduce(0, +)
    return (
        marks.min()!,
        marks.max()!,
        Double(total) / Double(marks.count)
    )
}

let result = summary(of: [72, 65, 48, 90])
print(result.minimum)
print(result.maximum)
print(result.average)

// Tuple unpacking
print("--- Unpacking ---")
let (low, high, average) = summary(of: [72, 65, 48, 90])
print(low)
print(high)
print(average)

// _ ignores the part we do not need
let (lowest, highest, _) = summary(of: [72, 65, 48, 90])
print("Lowest: \(lowest), Highest: \(highest)")

// Activity 4
print("--- Activity 4 ---")
func analyzeMarks(_ marks: [Int]) -> (total: Int, average: Double) {
    let total = marks.reduce(0, +)
    return (total, Double(total) / Double(marks.count))
}

let analysis = analyzeMarks([60, 70, 80, 90])
print("Total: \(analysis.total)")
print("Average: \(analysis.average)")
