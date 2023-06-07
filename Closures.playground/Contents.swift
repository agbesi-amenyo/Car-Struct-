import Cocoa

let team = ["Edem", "Sena", "Mawuli", "Joana"]
//trailing closures
let sorted = team.sorted{  a , b in
    if a == "Joana"{
        return true
    } else if b == "Joana"{
        return false
        
    }
    return a < b
}
 print(sorted)


//or

let sorted2 = team.sorted{
    if $0 == "Joana"{
        return true
    } else if $1 == "Joana"{
        return false
        
    }
    return $0 < $1
    
}


let reverseTeam = team.sorted {$0 > $1}
let tOnly = team.filter{$0.hasPrefix("T")}
print(tOnly)

let upperCaseTeam = team.map{$0.uppercased()}
print(upperCaseTeam)


//accepting functions as params
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}

//STRUCTS

struct Employee {
    let name : String
    var vacationRemaining : Int
    //properties of the struct
    //the func is method
   mutating func takeVacation (days : Int ) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I am going on vacation")
            print( "Days Remaining : \(vacationRemaining)")
        }
        else {
            print("Oops!There aren't enough days remaining ")
        }
        
    }
}
var archer = Employee(name: "Sterling Archer", vacationRemaining: 50) // variables or consts created from structs are called instances
archer.takeVacation(days: 51)
print(archer.vacationRemaining)

// How to compute struct properties dynamically
struct Employee2 {
    let name2 : String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    //Calculated dynamically
    // the get and set reads and allows swift to read nd write code
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }

        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
    
}

var archer2 = Employee2(name2: "Sterling Archer", vacationAllocated: 14)
archer2.vacationTaken += 4
archer2.vacationRemaining = 5
print(archer2.vacationAllocated)

//Bank account and acccess control

struct BankAccount {
    
    private(set) var funds = 0 // Controlling the access and limiting it to letting anyone read but only internal methids can be changed
    
    mutating func deposit(amount : Int){
        funds += amount
    }
    mutating func withdraw (amount : Int ) -> Bool {
        if funds > amount {
            funds -= amount
            print("You have withdrawn \(amount), you have \(funds) left")
            return true
        }
        else {
            print("You cannot withdraw \(amount), you only have \(funds) available")
            return false
        }
   
    }
    
    
}

var account = BankAccount()
account.deposit(amount: 100)
account.withdraw(amount: 50)


//Static properties and methods

struct School {
     static var studentCount = 0
    
    static func add (student : String ){
        print("\(student) joined the school" )
        studentCount += 1
        print("there are \(studentCount) student(s)" )
    }
}

School.add(student: "Agbesi")
