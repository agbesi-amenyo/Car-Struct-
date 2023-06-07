import Cocoa

struct Car {
    let model : String
    let seats : Int
    var  gear = 0 {
        
        willSet{
            print("Current value is \(gear)")
            print("New value will be \(newValue)")
            
        }
        didSet{
            print("Gear is now \(gear)")
            print("Old value was \(oldValue)")
        }
        
       
    }
    
    mutating func changeGear (gearChange : Int ) {
        if gearChange < 0 {
            print("You cannot go below the neutral point(0) ")
        }
        else if gearChange > 11  {
            print("You cannot change gears above 10")
        }
        else {
            gear += gearChange
            
            
        }
    }
    
}

var car = Car(model: "Toyota", seats: 4)
car.changeGear(gearChange: 5)
print(car)



