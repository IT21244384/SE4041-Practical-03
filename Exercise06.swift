// SE4041 Practical 03 - Exercise 06: Structures, Computed Properties, Methods and Classes
// The lab sheet redefines Student several times; each version has its own name here so the
// whole file runs in one scope.

// Struct with stored properties (Swift creates a memberwise initializer)
struct Student {
    var name: String
    var mark: Int
    var registered: Bool = true
}

let student = Student(name: "Amal", mark: 72)
print(student.name)
print(student.mark)
print(student.registered)

// Computed properties - area is calculated each time, not stored
print("--- Computed properties ---")
struct Rectangle {
    var width: Double
    var height: Double

    var area: Double {
        return width * height
    }
}

let rectangle = Rectangle(width: 4, height: 3)
print(rectangle.area)

// Computed grade
enum Grade: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case f = "F"
}

struct GradedStudent {
    var name: String
    var mark: Int

    var grade: Grade {
        switch mark {
        case 75...100:
            return .a
        case 65..<75:
            return .b
        case 50..<65:
            return .c
        default:
            return .f
        }
    }
}

let gradedStudent = GradedStudent(name: "Amal", mark: 72)
print(gradedStudent.name)
print(gradedStudent.grade.rawValue)

// Methods
print("--- Methods ---")
struct StudentRecord {
    var name: String
    var mark: Int

    func displayDetails() {
        print("\(name) received \(mark)")
    }
}

let record = StudentRecord(name: "Kamal", mark: 75)
record.displayDetails()

// mutating - needed when a struct method changes its own properties
struct Counter {
    var count = 0

    mutating func increment() {
        count += 1
    }
}

var counter = Counter()
counter.increment()
counter.increment()
print(counter.count)

// Classes - properties, methods and an explicit initializer
print("--- Classes ---")
class Lecturer {
    var name: String
    var module: String

    init(name: String, module: String) {
        self.name = name
        self.module = module
    }

    func introduce() {
        print("\(name) teaches \(module)")
    }
}

let lecturer = Lecturer(name: "Nushkan", module: "SE4041")
lecturer.introduce()

// Struct = value type: assigning makes an independent copy
print("--- Value type (struct) ---")
struct Point {
    var x = 0
}

var firstPoint = Point()
var secondPoint = firstPoint
secondPoint.x = 99

print(firstPoint.x)    // 0  - the original is unchanged
print(secondPoint.x)   // 99 - only the copy changed

// Class = reference type: both constants point to the same object
print("--- Reference type (class) ---")
class CounterClass {
    var count = 0
}

let firstCounter = CounterClass()
let secondCounter = firstCounter
secondCounter.count = 99

print(firstCounter.count)    // 99 - same object
print(secondCounter.count)   // 99

// Knowledge Check
// 1. To avoid repeating code, give reusable work a meaningful name, and test small parts separately.
// 2. A named input value passed into a function.
// 3. The function returns a String.
// 4. The external name used when calling the function, e.g. "from" in travel(from:to:).
// 5. A value a parameter uses when the caller doesn't pass one.
// 6. To check a requirement early and exit the function if it isn't met.
// 7. A group of several values combined into one, e.g. (minimum, maximum, average).
// 8. filter keeps only the elements that match a condition.
// 9. map transforms every element and returns a new array.
// 10. reduce combines all elements into a single value, such as a total.
// 11. It limits a value to a fixed set of valid choices, so invalid values can't be used.
// 12. A fixed value (like a String) attached to each enum case, read with .rawValue.
// 13. A value type that groups related properties and methods into a new type.
// 14. A property that stores a value in the instance.
// 15. A property that calculates its value every time it is accessed.
// 16. When a struct method changes one of the struct's own properties.
// 17. A reference type with properties, methods and initializers that can be shared and inherited.
// 18. A struct is copied when assigned (value type); a class instance is shared (reference type).
