// Ch 6 Loops


import UIKit

var str = "Hello, playground"



/**
 
 Loops help with repetitive tasks
 
 

 
 
 
 
 
 **/


// Ex 6.1 for-in loop
var myFirstint: Int = 0
for i in 1...5
{
    myFirstint  += 1
    myFirstint
    print(myFirstint)
}


// Ex 6.2 Printing the changing value of i to the console
var myFirstInt: Int = 0
for i in 1...5
{
    myFirstInt += 1
    myFirstInt
    print("\(myFirstInt) i:  \(i)")
}


// Ex 6.3 Replacing i with _
var mySecondInt = 0
for _ in 1...5
{
    mySecondInt += 1
    print("mySecondInt \(mySecondInt)")
}

// Ex 6.4 for-in loop with a where clause
for i in 1...100 where i % 3 == 0
{
    print(i)
}

// Ex 6.5 while loop
var i = 1
while i<6
{
    myFirstInt += 1
    print("\(myFirstInt) and i: \(i)")
    i += 1
}

// Ex 6.6 continue
//var shields = 15
//var blastersOverHeating = false
//var blasterFireCount =  0
//while shields > 0
//{
//    if blastersOverHeating
//    {
//        print("blasters overheated initiating cool down")
//        sleep(5)                                            // just a delay so I can see it in the console
//        print("blasters ready to fire ")
//        sleep(1)
//        blastersOverHeating = false
//        blasterFireCount = 0
//    }
//    
//    if blasterFireCount > 10
//    {
//        blastersOverHeating = true
//        continue                                            // stop the loop where it is and continue at the top
//    }
//    
//    print("Fire blasters ")
//    blasterFireCount += 1
//    shields -= 1
//}
//print("done")




// Ex 6.7 break
var shields = 15
var blastersOverHeating = false
var blasterFireCount =  0
var aliensDestroyed = 0

while shields > 0
{
    
    if aliensDestroyed == 20
    {
        print("\(aliensDestroyed) aliens destroyed, you win the game!")
        print("done")
        break                                              // exit the while-loop
    }
    
    if blastersOverHeating
    {
        print("blasters at \(blasterFireCount) overheated initiating cool down")
        //sleep(3)                                            // just a delay so I can see it in the console
        print("blasters ready to fire ")
        //sleep(1)
        blastersOverHeating = false
        blasterFireCount = 0
    }
    
    if blasterFireCount > 11
    {
        blastersOverHeating = true
        continue                                            // stop the loop where it is and continue at the top
    }
    
    // Fire blasters
    blasterFireCount += 1
    //shields -= 1
    aliensDestroyed += 1
    print("Fire blasters, blasterFireCount: \(blasterFireCount) , aliensDestroyed: \(aliensDestroyed)")
}


// SILVER CHALLENGE

/**
 Requirements
 1) loop 0 through 100 ( this means 0 - 99 inclusively)
 2) print FIZZ if evenly divisble by 3
 3) print BUZZ if evenly divisble by 5
 4) print FIZZ BUZZ if evenly divisble by 3 or 5
 5) if the number is not evenly divisibl by 3 or 5, print the number
**/


/**
 Test case
 
 i = 0, print 0
 i = 7, print 7
 
 i = 3, print FIZZ
 i = 6, print FIZZ
 i = 9, print FIZZ
 
 i = 5, print BUZZ
 i = 10, print BUZZ
 
 i = 15, print FIZZ BUZZ
 i = 45, print FIZZ BUZZ
 
**/
print("\nSILVER CHALLENGE")


for i in 0...20
{
    
    if (i != 0 && i % 3 == 0 && i % 5 == 0)
    {
        print("Fizz Buzz")
    }
    
    else if (i != 0 && i % 3 == 0 )
    {
        print("Fizz")
    }
    
    else if ( i != 0 && i % 5 == 0)
    {
        print("Buzz")
    }
    
    
    else
    {
        print(i)
    }
    
}



