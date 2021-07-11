import UIKit

//var str = "Hello, playground"

// 1 Простая функция, ничего не принимает и не возвращает
        // sayHello() { }   or sayHello() -> Void { }
func sayHello() -> () {
    print("Hello")
}
//вызываем функцию
sayHello()

// 2 Функция, принимающая один параметр

func oneParam(param: Int) {
    var param = param
    param += 1
}

oneParam(param: 5)

// 3 Функция не принимающая параметров но возвращающая значение

func returnValue() -> Int {
    let c = 10
    return c
}
returnValue()
let a = returnValue()
a
// 4 Функция принимающая несколько параметров и возвращающая значение

func giveMeYour(name: String, andSecondName: String) -> String {
     return "Your full name is \(name) \(andSecondName )"
}
giveMeYour(name: "Alexandr", andSecondName: "Kudrivtsev")

// 5 Функция принимающая массив в качестве параметра и использующая  вложенную функцию для работы

 func calcMoneyIn(array: [Int]) -> Int {

   var sum = 0
        func sayMoney() {
        print(sum)
        }
    for item in array {
        sum += item
        }

    sayMoney()
    return sum
  }
calcMoneyIn(array: [1, 2, 3, 4, 5])
calcMoneyIn(array: [1, 2, 3, 4, 5, 6])  

// 6 Функция которая принимает переменное число параметров

func findSum(ofIntegers integers: Int...) -> Int {
    
     var sum = 0
    
    for item in integers {
        sum += item
    }
    return sum
 }

findSum(ofIntegers: 1, 2, 3 ,4 , 5, 6)

// 7 Имена параметров функции

func sum(_: Int) -> Int {
    return 10
}

// 8 Функция в качестве возвращаемого значения

func whatToDo(missed: Bool) ->((Int) -> (Int)) {
    func missCountUp(input: Int) ->  Int {return input + 1}
    func missCountDown(input: Int) ->  Int {return input -  1}
    return missed ? missCountUp : missCountDown
    }

var missedCount = 0
missedCount = whatToDo(missed: true)(missedCount)
missedCount = whatToDo(missed: false)(missedCount)
