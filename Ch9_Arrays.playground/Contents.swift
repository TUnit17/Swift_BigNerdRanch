
// Ch 9 Arrays


//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// Ex 9.1 creating an array
//var bucketList: Array<String>

// Ex 9.2 changing the syntax

// bucketList is declared but not initialized
//var bucketList: [String]


// Ex 9.3 Initializing the array

//var bucketList: [String] = ["Climbing Mt Everest"]


// Ex 9.4 Using type inference

//var bucketList = ["Climbing Mt Everest"]
//bucketList.append("driving a GT3")
//bucketList.append(123)

// Ex 9.5 Append items to the array

var bucketList = [" become a millionaire"]
bucketList.append(" get really strong, bench 225")
bucketList.append(" program an iOS app")
bucketList.append(" travel to Taiwan, China, Australia, Japan, New Zealand, South America, Mexico, Canada, road trip across the US, go camping ")
bucketList.append(" be mentally strong")
bucketList.append(" own a M3, S4, Miata, STI")



// Ex 9.7 Removing an item from the array

bucketList.remove(at: 2)
bucketList



// Ex 9.8 Counting items in the array

print(bucketList.count)



// Ex 9.9 Subscripting to find your top 3 items

print(bucketList[0...2]) // prints index 0,1,2
print(bucketList[1...2]) // prints index 1,2

// Ex 9.10 Subscripting to append new information

bucketList[1] += " in Australia"        // add some text to the item at index 2
bucketList


// Ex 9.11 Replacing an array item
bucketList[0] = " start my own business "
bucketList



// Ex 9.12 Using a loop to append items from one array to another

var newItems = [" move to OC",
                " move to Rowland Heights",
                " move to Taiwan",
                " move to China"
               ]

//for item in newItems
//{
//    bucketList.append((item))
//}
//bucketList


// Ex 9.13 Refactoring with the addion and assignment operator


// The += operator makes an easy way to add your array of new items to your existing bucket list
bucketList += newItems
bucketList


// Ex 9.14 Inserting a new ambition

// insert this new item at index 2 and bump the rest of items down
// append only adds an item at the end of the list
// insert specifies where to add the the item into the array
bucketList.insert(" take cruise to Alaska", at: 2)
bucketList


// Ex 9.15 Checking two arrays for equality

var timsWifeList = [
                    "123",
                    "abc",
                    "wawa"
                    ]



let equal = (bucketList == timsWifeList)

// Because the contents both arrays are the same, you might expect equal to be set to true.
// Yet why was equal determined to be false? 
// This is because array values are not equal if the ordering is different


// Ex 9.16 Fixing the list by changing the order

var timsWifeList2 = [
    "123",
    "abc",
    "wawa"
]

var timList = [
    "123",
    "abc",
    "wawa"
]

let isEqual = (timsWifeList2 == timList)



// Ex 9.17 An immutable array

var lunches = [
"Cheeseburger",
"Pizza",
"Chinese",

]



// use the keyword let to create an immuatable array 

//lunches.append("new lunch")


// Bronze Challenge

lunches.contains("Pizza")



// Silver Challenge

// use a loop to reverse the order of the elements of this array

// test case
let lunches2 = [
"Chinese",
"Pizza",
"Cheeseburger"
]


lunches.count
//for i in 0...2 // i = 0,1,2
//{
//    print(lunches[lunches.count-i-1])
//}



// print to screen
// use the documentation to see if there is a more convenient way to do this

print("reverse")
for i in lunches.reversed()
{
    print(i)
}

//print(lunches.popLast() ?? "")



// Gold challenge
// find the indicies of Pizza in lunches and go forward 1 indices

if var bucketSpot = lunches.index(of: "Pizza")
{
    print(bucketSpot)
    print(lunches[bucketSpot+1])

}

