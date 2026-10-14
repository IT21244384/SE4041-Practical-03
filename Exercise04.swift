// SE4041 Practical 03 - Exercise 04: Closures, map, filter, and reduce

let marks = [72, 45, 65, 48, 90]

// filter - keeps values that satisfy the condition ($0 is the current element)
let passed = marks.filter { $0 >= 50 }
print(passed)

// map - transforms every value (the original array is not changed)
let increasedMarks = marks.map { $0 + 5 }
print(increasedMarks)
print(marks)

// reduce - combines all values into one ($0 is the running total, $1 the current element)
let total = marks.reduce(0) { $0 + $1 }
print(total)

// Activity 5 - no for loops
print("--- Activity 5 ---")
let prices = [120.0, 250.0, 80.0, 500.0, 150.0]

let expensivePrices = prices.filter { $0 > 100 }
let increasedPrices = prices.map { $0 + 10 }
let totalPrice = prices.reduce(0) { $0 + $1 }

print("Prices above 100: \(expensivePrices)")
print("Prices increased by 10: \(increasedPrices)")
print("Total of all prices: \(totalPrice)")
