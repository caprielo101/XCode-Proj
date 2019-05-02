import UIKit

var str = "Hello, playground"

class Spaceship {
    var fuelLevel = 50
    
    func liftOff(){
        fuelLevel-=50
        print("We have lift off!")
        currentFuel()
    }
    
    func addFuel(_ fuel:Int){
        fuelLevel+=fuel
        print("Fuel added")
        print("Current fuel level: \(fuelLevel)")
    }
    
    func cruise(){
        fuelLevel-=5
        print("Rocket is cruising")
        print("Current fuel level: \(fuelLevel)")
    }
    
    func thrust(){
        fuelLevel-=15
        print("Rocket is thrusting")
        print("Current fuel level: \(fuelLevel)")
    }
    
    func currentFuel(){
        print("Current fuel level: \(fuelLevel)")
    }
}

let mySpaceship = Spaceship()

mySpaceship.addFuel(50)

mySpaceship.liftOff()

mySpaceship.thrust()

mySpaceship.cruise()
