import UIKit

//for number in 1...100 {
//    if number%3 == 0 {
//        print("Fizz")
//    } else if number%5 == 0 {
//        print("Buzz")
//    } else if (number%3 == 0 && number%5 == 0){
//        print("FizzBuzz")
//    } else {
//        print(number)
//    }
//}

//for number1 in 1...10 {
//    for number2 in 1...10 {
//        //number1 times number2 equals result
//        print("\(number1) x \(number2) = \(number1*number2)")
//    }
//}

//Array(1...10).map{ s in Array(1...10).map { n in print("\(s) x \(n) = \(s*n)")}}
//
//Array(1...10).map{
//    s in Array(1...10).map {
//        n in print("\(s) x \(n) = \(s*n)")
//    }
//}

var palindrome1 = "Kasur ini rusak"
var palindrome2 = "Ibu ratna antar ubi"

func checkPalindrome(of string: String) -> Bool {
//    if(string.lowercased() == String(string.lowercased().reversed())){
//        return true
//    } else {
//        return false
//    }
    let result = string.lowercased() == String(string.lowercased().reversed()) ? true : false
    return result
}
checkPalindrome(of: palindrome1)

//Challenge of 16 April 2019, Thursday
func roundingGrade(of grade:Int) -> Int {
    if grade > 38{
        if grade%5>=3{
    return grade+5-(grade%5)
        }else {
            return grade - (grade%5)
        }
    }
    return grade
}

//func rounding(grade:Int) -> Int {
//    let result = grade > 38 ? grade%5>=3 ? grade+5-(grade%5) : grade-(grade%5) : grade
//    return result
//}

func validateGrade(of grade:Int){
    if grade >= 40{
        print("pass, \(roundingGrade(of: grade))")
    }else{
        print("failed, \(roundingGrade(of: grade))")
    }
}

validateGrade(of: 60)
//rounding(grade: 82)
