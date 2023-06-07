import Cocoa

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

let filterLuckyNumbers = { (_ : [Int])  in
    luckyNumbers.sorted()
   .filter {!$0.isMultiple(of: 2)}
   .map{print("\($0) is a lucky number")}
    
}
filterLuckyNumbers(luckyNumbers)






