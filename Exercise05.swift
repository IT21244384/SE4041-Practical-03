// SE4041 Practical 03 - Exercise 05: Enumerations
// An enum defines a fixed set of possible values, preventing invalid values.

enum Direction {
    case north
    case south
    case east
    case west
}

var direction = Direction.north
print(direction)

direction = .south   // Swift already knows the type, so .south is enough
print(direction)

// Enum with switch - no default needed when every case is covered
enum Status {
    case registered
    case pending
    case rejected
}

let studentStatus = Status.registered

switch studentStatus {
case .registered:
    print("Registration Complete")
case .pending:
    print("Registration Pending")
case .rejected:
    print("Registration Rejected")
}

// Raw values
enum Grade: String {
    case a = "A"
    case b = "B"
    case c = "C"
    case f = "F"
}

let grade = Grade.b
print(grade.rawValue)

// Activity 6
print("--- Activity 6 ---")
enum ModuleStatus: String {
    case notStarted = "Not Started"
    case inProgress = "In Progress"
    case completed = "Completed"
}

let practicalStatus = ModuleStatus.inProgress
print(practicalStatus.rawValue)
