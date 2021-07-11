import UIKit

class Student {
    var name : String
    var surname : String
    var yearOfBorn : Int
    var mark : Double

    var fullName: String {
        return name + " " + surname
    }

    func paramObj() {
        print("Hello! I'm a student. My name is \(name) surname \(surname). Years of born \(yearOfBorn) and mark \(mark)")    }

   init(name: String, surname : String, yearOfBorn : Int, mark : Double) {
    self.name = name
    self.surname = surname
    self.yearOfBorn = yearOfBorn
    self.mark = mark
   }
}

let studentOne = Student (name: "Alex", surname: "Kutuzov", yearOfBorn: 1999, mark: 4.88)
let studentTwo = Student (name: "Jim", surname: "Kerry", yearOfBorn: 1998, mark: 4.56)
let studentThree = Student (name: "John", surname: "Winx", yearOfBorn: 1997, mark: 3.78)
let studentFour = Student (name: "Ed", surname: "Shrn", yearOfBorn: 1996, mark: 4.05)

var arrayStudents = [Student] ()
arrayStudents.append(studentOne)
arrayStudents.append(studentTwo)
arrayStudents.append(studentThree)
arrayStudents.append(studentFour)

arrayStudents

//studentOne.paramObj()
//studentFour.paramObj()

arrayStudents[0].mark
arrayStudents[1].mark
arrayStudents[2].mark
arrayStudents[3].mark

studentTwo.mark

arrayStudents.sort {
    $0.mark > $1.mark
}

let sortedArrayStudents = arrayStudents.sorted {
    $0.mark > $1.mark
}

sortedArrayStudents[0].paramObj()
sortedArrayStudents[1].paramObj()
sortedArrayStudents[2].paramObj()
sortedArrayStudents[3].paramObj()

studentOne.fullName

print(studentOne.fullName)
print(studentTwo.fullName)
print(studentThree.fullName)
print(studentFour.fullName)

class Car {
    
        var type: String
        var age: Int
    
        init(type: String, age : Int) {
            self.type = type
            self.age = age
    }
}
let audi = Car(type: "A6", age: 3)
print(audi.type,audi.age)


