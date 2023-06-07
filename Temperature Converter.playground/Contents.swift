import Cocoa

//Create a constant holding any temperature in celsius
let  celsiusTemp = 100.0

// Convert that temp to Farenheit by *9, /5 then + 32
let farTemp = (celsiusTemp * 9 )/(5) + 32

//Print result shoring both ºC and F values
print ("\(celsiusTemp)°C is equal to \(farTemp)°F")
