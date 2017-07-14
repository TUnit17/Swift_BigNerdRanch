// CH 5 Switch

//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//***** p91 Where clauses *****

/**
 where clause
 status code 200 represents sucess
 
 where, allows you to check for additional conditions that must be met for the case to match and the value to be bound.
 This features creates a sort of dynamic filter within the switch
 Your case for unknownCode now specifies a range of status codes, which means it is not exhaustive.
 This is not a problem because you already have a default case in the switch.
 
 Without the fallthrough feature, the switch statement will finish execution as soon as it finds a matching case and executes its body.
 When status code is 204, the switch will match at the 2nd case and the errorString will be set accordingly. So, even though 204 is within the specified range in the where clause, the switch statement neve gets to that clause
 **/

//var statusCode: Int = 506
//var errorString: String = "The request failed with the error: "
//
//switch statusCode {
//case 100,101:
//    errorString += "Information, \(statusCode)."
//
//case 204:
//    errorString += "Successfull but no content, 204"
//
//case let unknownCode where (unknownCode >= 200 && unknownCode < 300 ) || unknownCode > 505 :
//    errorString = "\(unknownCode) is not a known error code"
//    
//default:
//    errorString = "Unexpected error encountered"
//}


// Conclusion
// statusCode 506 and 204 will trigger the unknownCode case


//***** p92 Tuples and Pattern Matching *****


// Why pair statusCode and errorString together?
// they are logically related, but currently stored as two independent variables
// a tuple can be used group them

// Tuple
// a finite groupong of two or more values that are deemed by the developer to be logically related. 
// the result of this grouping is an ordered list of elements 



// Seventh example - tuples and pattern matching
var statusCode: Int = 418
var errorString: String = "The request failed with the error:"
switch statusCode {
case 100, 101:
    //    errorString += " Information, 1xx."
    errorString += " Information, \(statusCode)."
    
case 204:
    errorString += " Successful but no content, 204"
    
case 300...307:
    //    errorString += " Redirection, 3xx"
    errorString += " Redirection, \(statusCode)"
    
case 400...417:
    //    errorString += " Client error, 4xx"
    errorString += " Client error, \(statusCode)"
    
case 500...505:
    //    errorString += " Server error, 5xx"
    errorString += " Server error, \(statusCode)"
    
case let unknownCode where (unknownCode >= 200 && unknownCode < 300) || unknownCode > 505:
    errorString = "\(unknownCode) is not a known error code"
default:
    errorString = "Unexpected error encountered."
}


// You made a tuple by grouping statusCode and errorString within parentheses.
// the result was assigned to the constant error
// the elements of a tuple can be accessed by their index.

//let error = (statusCode, errorString)
//error.0
//error.1

// Swift tuples can also have named elements.
let error = (code : statusCode, error : errorString)
error.code
error.error

// Using a tuple in the switch statement's cases enables you to match against very specific patterns.

let firstErrorCode = 404
let secondErrorCode = 200
let errorCodes = (firstErrorCode, secondErrorCode)

switch errorCodes
{

case (404,404) :
    print("No items found")

case (404, _):                      // underscore is a wildcard that matches anything
    print("First item not found")
    
case (_, 404) :
    print("Second item not found")
    
default:
    print("All items found")

}

// switch vs if-else statemnet 

// switch statments are better for comparing a value against a number of potential matching cases
// this is an example where switch is NOT a good idea
// Problem = there is unnecessary code like the default : break statement
let age = 29

switch age
{
    case 18...35:
    print("Cool demographic")
default:
    break
    
    
    
}

// This if-statemement simply checks if age is in the given range.
// You do not have to right a default case that you did not care about
if case 18...35 = age
{
    print("Cool demographic")
    
}



// if-cases
// After the comma, it also checks to see if a person is greater than 21
let age2 = 20
if case 18...35 = age2, age2 >= 21
{
    print ("I am old enough to drink")
}


// BRONZE Challenge 
// What will be logged to the console?


//The point variable is a tuple
//The point variable has 3 parameters or values
 let point = (x:1, y:4, z:4)

//There is a switch statement where the input is the point-variable
switch point
{
    // q1 is some constant
    case let q1 where (point.x > 0) && (point.y > 0) :
        print("\(q1) is in quad 1") // I think it is just prints q1
        // Why is q1 equal to the point-variable?
    
    
    case let q2 where (point.x < 0) && (point.y > 0) :
    print("\(q2) is in quad 2")
    
    default:
    print("case not covered")
    
}

// SILVER CHALLENGE
// not in their thirtys

let age3 = 29
if case 18...35 = age3, age3 >= 21, age3 <= 29
{
    print ("I am \(age3) years old \nI am in the cool demographic (21-29) and of drinking age ")
}
else
{
    print ("Not in the cool demographic")
}


