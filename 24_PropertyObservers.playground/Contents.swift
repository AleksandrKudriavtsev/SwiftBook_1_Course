import UIKit

//var str = "Hello, playground"

class SecretLabEmployee {
    var accessLevel = 0 {
        willSet(newValue){
            print("New boss is about to come")
            print("New access level is \(newValue)")
        }
        didSet{
            if accessLevel > 0 {
                accessToDb = true
            } else {
                accessToDb = false
            }
            print("New boss just come")
            print("Last time i had access level \(oldValue )")
        }
    }
    var accessToDb = false
}

let employee = SecretLabEmployee()
employee.accessLevel
employee.accessToDb

employee.accessLevel = 1
employee.accessToDb


