import UIKit

struct Person {
  var firstName: String
  var middleName: String?
  var lastName: String
}

let rick = Person(firstName: "Rick", middleName: nil, lastName: "Smith")


/// uwrap 1
print(rick.middleName)
//print(rick.middleName!)
print(rick.middleName ?? "middle") //default value

/// unwrap 2
func tellMeAboutThePerson(person: Person) {
  print("first name is \(person.firstName)")
  
  if let middle = person.middleName {
    print("middle name is \(middle)")
  }
  
  print("last name is \(person.lastName)")
}

tellMeAboutThePerson(person: rick)


func getMiddleName(person: Person) -> String? {
  guard let middle = person.middleName else { return nil }
  return middle
}

func getMiddleName2(person: Person) -> String? {
  let hasMiddleName: Bool = person.middleName != nil
  return hasMiddleName ? person.middleName! : "no middle name"
}


// optional chaining


