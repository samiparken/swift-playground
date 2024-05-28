import UIKit

class School {
  private var students = [Student]()
  func add(student: Student) {
    students.append(student)
  }
}
class Student {
  private weak var school: School? 
  //weak reference doesn't increase reference count so it can be deallocated when Student object is deallocated.
  // Weak reference prevents a strong reference cycle, allowing deallocation of the Student and School objects when no strong references exist.
  required init(school: School) {
    self.school = school
  }
}
let school = School()
let student = Student(school: school)
school.add(student: student)

/// Switch to Struct to avoid retain cycle. because it's value type.
//struct School {
//  private var students = [Student]()
//  mutating func add(student: Student) {
//    students.append(student)
//  }
//}
//struct Student {
//  private var school: School
//  init(school: School) {
//    self.school = school
//  }
//}
//var school = School()
//var student = Student(school: school)
//school.add(student: student)


// Example of Retain Cycle
// protocol - delegate

//protocol LogansVCDelegate {
protocol LogansVCDelegate : class{
  func setup(with data: [Any])
}

class LogansVC: UIViewController {
  //var delegate: LogansVCDelegate? // strong reference, it increases reference count
  weak var delegate: LogansVCDelegate? // weak reference
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
}

class SomeOtherClass: LogansVCDelegate {
  var viewController: LogansVC?

  func setup(with data: [Any]) {
    // Implementation
  }

  init() {
    let vc = LogansVC()
    vc.delegate = self
    self.viewController = vc
  }
}

// Example of Retain Cycle
// Closures
class ClosureExample {
  private var count = 0
  private var closure: (()->()) = {}
  
  init() {
    
//    closure = {
//      self.count += 1 //strong reference
//      print(self.count)
//    }
    
    // avoid retain cycle
    closure = {[weak self] in
      self?.count += 1
      print(self?.count)
    }
    
  }
  func runClosure() {
    closure()
  }
}


