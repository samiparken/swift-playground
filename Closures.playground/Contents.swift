import UIKit

struct Student {
  let name: String
  var testScore: Int
}

let students = [Student(name: "Luke", testScore: 88),
Student(name: "Han", testScore: 73),
Student(name: "Leia", testScore: 95),
Student(name: "Chewy", testScore: 78),
Student(name: "Ahsoka", testScore: 86),
Student(name: "Yoda", testScore: 68),
Student(name: "Test", testScore: 99)]

// Function
func topStudentFilterF(student: Student) -> Bool {
  return student.testScore > 80
}

// Closure
var topStudentFilter: (Student) -> Bool = { student in
  return student.testScore > 80
}

// Closure with 1 param
let topStudents = students.filter(topStudentFilter)
let topStudents2 = students.filter { student in
  return student.testScore > 80
}
let topStudents3 = students.filter {$0.testScore > 80 }

// Closure with 2 param
let studentRanking = topStudents.sorted { student1, student2 in
  return student1.testScore > student2.testScore
}
let studentRanking2 = topStudents.sorted { $0.testScore > $1.testScore }
  
// Trailing Closure Syntax
func someFunctionWithClosure(_ num: Int, closure: () -> Void) {
  print("This is someFunctionWithClosure function")
  print(num)
}
someFunctionWithClosure(1) {
  // Closure body
  print("This is a trailing closure")
}
