import UIKit

class ClassDog {
  var breed = "Golden Retriever"
}
struct StructDog {
  var breed = "Golden Retriever"
}

var dog1 = StructDog()
var dog2 = dog1

dog2.breed = "ABC"
print(dog1.breed) //ABC
print(dog2.breed) //ABC
