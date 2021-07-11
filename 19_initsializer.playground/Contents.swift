 import UIKit

class Human {
    var name: String
    var age: Int?
    var hairs: Bool
    func description() -> String {
        if let humanAge = age {
        return  "Hello! My name is \(name) and i'm \(humanAge) years old."
        } else {
        return "Hello! My name is \(name)!"
        }
        }
    init() {
        name = "Aleksandr"
        hairs = true
    }
    init(name: String, age: Int?, hairs: Bool) {
        self.name = name
        self.age = age
        self.hairs = hairs
    }
    
}
let human = Human()
human.age
human.name
human.hairs

let human1 = Human (name: "Jim", age: 40, hairs: true)
 

