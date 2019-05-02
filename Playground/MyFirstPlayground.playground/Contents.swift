import UIKit

//Hands on B
var numberOfLikes = 69690
var numberOfComments = 1230
let yearCreated:Int = 2019
let monthCreated:Int = 4
let dayCreated:Int = 12

//Hands on C
struct exercise{
    let name = "Who"
    var age = 17
    var numberOfStepsTaken = 12313
    var goalNumberOfSteps = 20000
    var averageHeartRate = 80
}

//Hands on D
var firstDecimal = 1.0
var secondDecimal = 2.1

var trueOrFalse = true
//firstDecimal = trueOrFalse

var someString:String = "Hi"
//firstDecimal = someString

var someWholeNumber:Int = 12
firstDecimal = Double(someWholeNumber)
print(firstDecimal)

//Hands on E
let name = "Who"
var age = 17
var numberOfStepsTaken = 12_313
let goalNumberOfSteps = 20_000
var averageHeartRate = 80
var hasMetStepGoal = false

//Hands on F

//Hands on G


//Hands on A
let heartRate1 = 66
let heartRate2 = 77
let heartRate3 = 99
let addedHR = heartRate1 + heartRate2 + heartRate3
let averageHR = addedHR/3

let heartRate1D = Double(heartRate1)
let heartRate2D = Double(heartRate2)
let heartRate3D = Double(heartRate3)
let addedHRD = heartRate1D + heartRate2D + heartRate3D
let averageHRD = addedHRD/3

let steps:Double = 3_467
let goal:Double = 10_000
let percentOfGoal = (steps/goal) * 100
print("\(percentOfGoal)%")

//Hands on B
var someValue = 10
someValue+=5
print(someValue)
someValue*=2
print(someValue)

var piggyBank = 0
piggyBank += 10
piggyBank += 20
piggyBank/=2
piggyBank*=3
piggyBank-=3
print("Halo teman semua", terminator: "")
print(piggyBank)

//Hands on C
let x = 10
let y = 3.2
let multipliedAsIntegers = x * Int(y)
let multipliedAsDoubles = Double(x) * y

//Hands on D
let stepsu:Int = 3_467
let goalu:Int = 10_000
let percentOfGoalu:Double = (Double(stepsu)/Double(goalu)) * 100
print("\(percentOfGoalu)%")





var someTuple:(firstName:String, age:Int) = ("Hi",12)

print(someTuple.firstName)


