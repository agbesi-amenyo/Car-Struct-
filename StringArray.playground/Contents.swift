import Cocoa

var greeting = "Hello, playground"

//Create an array of strings, then write a code that prints the number of items in the array as well its unique items

let albums = ["The Sideline Story", "Born Sinner", "2014 Forest Hills Drive", "The Off-Season", "The Off-Season", "The Sideline Story", "Born Sinner", "2014 Forest Hills Drive", "The Off-Season", "The Off-Season"]
print(albums.count)
//turn array into set
let albumSet = Set(albums)
print(albumSet)
