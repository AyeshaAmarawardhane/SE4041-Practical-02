// Final Practical Task - Student Performance Manager

var studentMarks: [String: Int] = [
    "Amal": 72,
    "Nimali": 45,
    "Dilan": 68,
    "Iresha": 90,
    "Kasun": 38
]

var passedStudents: [String] = []
var gradesAwarded: Set<String> = []

var totalMarks = 0

print("==================================")
print("STUDENT PERFORMANCE")
print("==================================")

for name in studentMarks.keys.sorted() {
    if let mark = studentMarks[name] {

        let grade: String

        switch mark {
        case 80...100:
            grade = "A"
        case 75..<80:
            grade = "A-"
        case 70..<75:
            grade = "B+"
        case 65..<70:
            grade = "B"
        case 60..<65:
            grade = "B-"
        case 55..<60:
            grade = "C+"
        case 45..<55:
            grade = "C"
        case 40..<45:
            grade = "C-"
        case 0..<40:
            grade = "F"
        default:
            grade = "Invalid"
        }

        print("\(name) - \(mark) - \(grade)")

        if mark >= 50 {
            passedStudents.append(name)
        }

        gradesAwarded.insert(grade)
        totalMarks += mark
    }
}

let average = Double(totalMarks) / Double(studentMarks.count)

let allMarks = Array(studentMarks.values)
let highestMark = allMarks.max() ?? 0
let lowestMark = allMarks.min() ?? 0

print("----------------------------------")

print("Passed Students:")
for student in passedStudents.sorted() {
    print(student)
}

print("----------------------------------")

print("Grades Awarded:")
for grade in gradesAwarded.sorted() {
    print(grade)
}

print("----------------------------------")

print("Class Average: \(average)")
print("Highest Mark: \(highestMark)")
print("Lowest Mark: \(lowestMark)")