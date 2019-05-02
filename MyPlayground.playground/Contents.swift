import UIKit
/*
var num:Int = 5

var doubleNum:Double = 3.2

var floatNum:Float = 3.2

var booleanValue:Bool = true

var str:String = " "

//will set to this value
var myFontSize = 10 {
    willSet(newFontSize) {
        print("Will set font to \(newFontSize), it was \(myFontSize)")
    }
    didSet(oldFontSize) {
        print("Did set font to \(myFontSize), it was \(oldFontSize)")
    }
}

myFontSize+=1

class Human {
    var firstName = "John"
    var lastName = "Snow"
    var fullName:String {
        get{
            return firstName + " " + lastName
        }
    }
}

let human = Human()

print(human.fullName)


for i in 0..<2 {
    print(i, separator: " ")
}

struct Humanoid {
    static var nama:String {
        return "I don't have an identity"
    }
    var age = 17
}

print(Humanoid.init(age: 17))

print(Humanoid.nama)

let Jeff = Humanoid()

print(Jeff.age)

class Character {
    class func Attack() -> String {
        return "Attacking"
    }
}

class Swordsman: Character {
    override class func Attack() -> String {
        return "Slashing enemy"
    }
}

let randomGuy = Character()
let swordGuy = Swordsman()

print(Character.Attack())
print(Swordsman.Attack())

let a = 10 as Int

print(a)

let numberA = 10 + arc4random_uniform(255 - 10 + 1)

print(numberA)

let coin = arc4random_uniform(2) + 1

String(1669,radix: 2)

func testFunction() {
    let someValue:Int? = 5
    guard let temp = someValue else {
        return
    }
    print("It has some value \(temp)")
}

testFunction()

var arr = [String]()

arr.append("first")
arr.append("second")

print(arr[0])

var someString:String = ""

if someString.isEmpty {
    print("String does not exist")
}
*/

let phi:Float = 3.14

var a:Float = 9

let result = (a < phi) ? "You mom gay" : "You dad gay"
print(result)

var counter = 1

repeat {
    print("\(counter). Your mom gay")
    counter+=1
} while(counter <= 9)

//Basic Function
func goodMorning() {
    print("Good Morning!")
}

//Function with parameters
func printTotalWithTax(subTotal:Double) {
    print(subTotal*1.13)
}

//Function with returnValue
func getTotalWithTax(subTotal:Double) -> Double {
    return subTotal*1.13
}

func calculateTotalWithTax(subTotal:Double, tax:Double) -> Double {
    return subTotal*tax
}

