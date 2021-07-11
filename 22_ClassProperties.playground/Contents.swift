import UIKit

class Car {
    
    // properties
    let products: Int
    let people: Int
    let pets: Int
    class var selfWeigth: Int { return 1500}
    class var maxWeight: Int {return 2000}
    
    // computed Properties
    var totalWeight: Int {
        return products + people + pets + Car.selfWeigth
    }
    
    // initializer
    init(products: Int, people: Int, pets: Int) {
        self.products = products
        self.people = people
        self.pets = pets
    }
}
let car = Car(products: 30, people: 500, pets: 50)
//let maxWeight = Car.maxWeight
let carWeight = Car.selfWeigth
let totalWeight = car.totalWeight

if Car.maxWeight < totalWeight {
    print("You can't drive because car is overloaded: \(totalWeight - Car.maxWeight)")
} else {
    print("You can drive!")
}



