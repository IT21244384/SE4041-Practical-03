// SE4041 Practical 03 - Final Practical Task: Student Management System

// Part A - Grade enum
enum Grade: String {
    case a = "A"
    case aMinus = "A-"
    case bPlus = "B+"
    case b = "B"
    case bMinus = "B-"
    case cPlus = "C+"
    case c = "C"
    case cMinus = "C-"
    case f = "F"
}

// Part B - Student struct
struct Student {
    let studentID: String
    var name: String
    var mark: Int

    // Part C - Computed grade property
    var grade: Grade {
        switch mark {
        case 80...100: return .a
        case 75..<80: return .aMinus
        case 70..<75: return .bPlus
        case 65..<70: return .b
        case 60..<65: return .bMinus
        case 55..<60: return .cPlus
        case 45..<55: return .c
        case 40..<45: return .cMinus
        default: return .f
        }
    }

    // Part D - Method
    func displayDetails() {
        print("ID: \(studentID)")
        print("Name: \(name)")
        print("Mark: \(mark)")
        print("Grade: \(grade.rawValue)")
        print("")
    }
}

// Part E - Create students
let students = [
    Student(studentID: "IT001", name: "Amal", mark: 72),
    Student(studentID: "IT002", name: "Nimali", mark: 45),
    Student(studentID: "IT003", name: "Ruwan", mark: 68),
    Student(studentID: "IT004", name: "Sanduni", mark: 90),
    Student(studentID: "IT005", name: "Kasun", mark: 38)
]

print("==================================")
print("STUDENT MANAGEMENT SYSTEM")
print("==================================")

// Part F - Display students
for student in students {
    student.displayDetails()
}

// Part G - filter: students with mark >= 50
let passedStudents = students.filter { $0.mark >= 50 }
print("----------------------------------")
print("Passed Students:")
for student in passedStudents {
    print(student.name)
}

// Part H - map: names only
let studentNames = students.map { $0.name }
print("----------------------------------")
print("Student Names: \(studentNames)")

// Part I - reduce: total and class average
let totalMarks = students.reduce(0) { $0 + $1.mark }
let classAverage = Double(totalMarks) / Double(students.count)
print("----------------------------------")
print("Total Marks: \(totalMarks)")
print("Class Average: \(classAverage)")

// Additional Challenge
print("==================================")
print("ADDITIONAL CHALLENGE")
print("==================================")

// Validate an optional name and mark with guard let
func addStudent(name: String?, mark: Int?) {
    guard let name = name, !name.isEmpty else {
        print("Invalid: student name is missing")
        return
    }
    guard let mark = mark, (0...100).contains(mark) else {
        print("Invalid: mark for \(name) is missing or outside 0-100")
        return
    }
    print("Valid: \(name) - \(mark)")
}

addStudent(name: "Kamal", mark: 75)
addStudent(name: "", mark: 60)
addStudent(name: "Nimal", mark: 120)
addStudent(name: "Saman", mark: nil)

// Summarise students with a tuple; an empty array returns nil instead of crashing
func summarize(_ students: [Student]) -> (minimum: Int, maximum: Int, average: Double)? {
    guard !students.isEmpty else { return nil }
    let marks = students.map { $0.mark }
    let total = marks.reduce(0, +)
    return (marks.min()!, marks.max()!, Double(total) / Double(marks.count))
}

if let stats = summarize(students) {
    print("Minimum: \(stats.minimum), Maximum: \(stats.maximum), Average: \(stats.average)")
}
if summarize([]) == nil {
    print("No students to summarise")
}

// Value type vs reference type
var originalStudent = students[0]
var copiedStudent = originalStudent      // struct: an independent copy
copiedStudent.mark = 99
print("Struct - original: \(originalStudent.mark), copy: \(copiedStudent.mark)")
// The original keeps 72 because the copy is a separate value.

class StudentRegister {
    var count = 0
}

let mainRegister = StudentRegister()
let sharedRegister = mainRegister        // class: both refer to the same object
sharedRegister.count = students.count
print("Class - main: \(mainRegister.count), shared: \(sharedRegister.count)")
// Both show 5 because they reference the same instance.
