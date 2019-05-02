import Foundation
//Array
var arrayOfMusic = ["Super Music","1999","Kimi no Na Wa","Haikyuu","Why do you love me?","Album Eight","I am a psycho"]
arrayOfMusic.append("Love is Lie")

for i in arrayOfMusic.indices {
    if(i == 4) {
        print("⭐️\(i+1). \(arrayOfMusic[i])")
    } else {
        print("\(i+1). \(arrayOfMusic[i])")
    }
}
//print(arrayOfMusic)

//Dictionary
var someDictionary:[String:String] = ["Hi":"Bitch"]

var netflixGenres: [String:[String]] = [:]

netflixGenres["Action"] = ["Tomb Raider", "22 Jump Street", "My Name is Jeff"]
netflixGenres["Sci-Fi"] = ["Star Wars", "Star Wars 2", "Star Wars 3", "Star Wars 4"]
netflixGenres["Horror"] = ["Silent Hill", "Fatal Frame", "Resident Evil"]
netflixGenres["Comedy"] = ["Stand Up Comedy", "Filmnya Ernest Prakasa", "Filmnya Raditya Dika"]
netflixGenres["Marvel"] = ["Stan Lee","Black Widow", "Iron Man"]

print(netflixGenres["Action"]!)

for genres in netflixGenres {
    print(genres.key)
    for movies in genres.value {
        print("- \(movies)")
    }
    print("")
}

//Set
var blueFollowers: Set<String> = ["Binus","Bunis","Anubis","Sabuni","Ibanus"]
var greenFollowers: Set<String> = []

greenFollowers.insert("Abunis")
greenFollowers.insert("Anubis")
greenFollowers.insert("Bunis")
greenFollowers.insert("Suniba")
greenFollowers.insert("Sabun")

print(blueFollowers)

let union = blueFollowers.union(greenFollowers)

let intersect = blueFollowers.intersection(greenFollowers)

//Optional
var number:Int?
func doesHaveValue(num:Int?) {
    guard let unwrap = num else {
        print("Tidak ad value")
        return
    }
    print(unwrap)
}

doesHaveValue(num: number)

var name:String? = "Jeff"
func doesHaveName(thisName:String?) -> String {
    guard let unwrap = thisName else {
        return "We have no name"
    }
    return "My name is \(unwrap)"
}

doesHaveName(thisName: name)

if name != nil{
    print(name!)
}else{
    print("NO NAME")
}

//Enumerations
enum Directions {
    case north
    case south
    case west
    case east
}

var myDirection: Directions = .north

switch myDirection {
case .north:
    print("Halo, kamu sedang berada di utara")
case .east:
    print("Halo, kamu sedang menuju ke timur")
default:
    print("Kamu kemana tong")
}

enum Trash {
    case food, plastic, paper, metal, glass, rubber
}

enum Bin {
    case red, blue, white, grey, cyan, black
}

var myTrash: Trash = .glass
switch myTrash{
case .food:
    debugPrint("put that shit to \(Bin.red) bin")
case .plastic:
    debugPrint("put that shit to \(Bin.blue) bin")
case .paper:
    debugPrint("put that shit to \(Bin.white) bin")
case .metal:
    debugPrint("put that shit to \(Bin.grey) bin")
case .glass:
    debugPrint("put that shit to \(Bin.cyan) bin")
case .rubber:
    debugPrint("put that shit to \(Bin.black) bin")
}

//Function
var arrayOfNumbers = [4,3,2,5,8,1]

func printArray(of arrayOfNumbers: Array<Int>){
    for numbers in arrayOfNumbers {
        print(numbers, terminator: " ")
    }
}
printArray(of: arrayOfNumbers)


func calculateExponent(of number:Int, with exponent:Int) -> Int {
    var result = number
    //if exponent 0,1, atau negatif
    for _ in 1..<exponent {
        result = result * number
    }
    return result
}
calculateExponent(of: 2, with: 4)
print(calculateExponent(of: 3, with: 5))



