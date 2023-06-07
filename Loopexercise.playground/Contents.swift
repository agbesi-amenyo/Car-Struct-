import Cocoa

//Loop from 1 through 100
//If it is a multiple of 3 print fizz
//if a mlutiple of 5 print "buzz'
// if it is a multiple of both print fizzbuzz
//otherwise just print the number

for i in 1...100{
    
    if  i.isMultiple(of: 3) && i.isMultiple(of: 5) {
            print("FizzBuzz")
        }
    else if i.isMultiple(of: 3){
        print("Fizz")
    }
 else if  i.isMultiple(of: 5) {
        print("Buzz")
    }
    else { 
        print(i)
        
    }
   
}
