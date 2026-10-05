// Exercise 02 - Sets

let mobileDevelopmentStudents: Set<String> = [
    "Ayesha",
    "Nimali",
    "Dilan",
    "Kasun"
]

let gameTechnologyStudents: Set<String> = [
    "Nimali",
    "Dilan",
    "Iresha",
    "Amal"
]

let allStudents = mobileDevelopmentStudents.union(gameTechnologyStudents)
let bothModules = mobileDevelopmentStudents.intersection(gameTechnologyStudents)
let onlyMobileDevelopment = mobileDevelopmentStudents.subtracting(gameTechnologyStudents)
let onlyOneModule = mobileDevelopmentStudents.symmetricDifference(gameTechnologyStudents)

print("All Students: \(allStudents.sorted())")
print("Students Taking Both Modules: \(bothModules.sorted())")
print("Only Mobile Development: \(onlyMobileDevelopment.sorted())")
print("Only One Module: \(onlyOneModule.sorted())")