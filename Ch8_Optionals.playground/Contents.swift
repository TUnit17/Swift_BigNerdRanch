
//CH 8 Optionals


//: Playground - noun: a place where people can play

import UIKit


 /**
 **/


// Ex 8.1 Declaring an optional type

//var errorCodeString: String?
//errorCodeString = "404"
//print(errorCodeString)



// Ex 8.2 Logging the value of the optional to the console 

//var errorCodeString: String?
//errorCodeString = "404"
//print(errorCodeString)


// Ex 8.3 Logging the nil value of the optional to the console

//var errorCodeString: String?
////errorCodeString = "404"
//print(errorCodeString)

// Ex 8.4 Adding a condition
//var errorCodeString: String?                // the optional was nil when it was first declared
//errorCodeString = "404"                     // then it was assigned "404"
//if(errorCodeString != nil)                  // if the errorCodeString is not nil
//{
//    let theError = errorCodeString!
//    print(theError)
//}


// Ex 8.5 Optional binding

//var errorCodeString: String?
//errorCodeString = "404"
//if let theError = errorCodeString           // theError is a temp variable
//{                                           // if errorCodeString has a value, store it in theError
//    print(theError)
//}



// Ex 8.6 Nesting optional binding
// Imagine you want to convert errorCodeString to its corresponding integer representation

//var errorCodeString: String?
//errorCodeString = "404!"
//if let theError = errorCodeString
//{
//    if let errorCodeInteger = Int(theError) // if it is true that theError has a value that can be converted to an int, then print it out
//    {
//        print("\(theError): \(errorCodeInteger)")
//    
//    }
//    else
//    {
//        print("fail to convert")
//    }
//
//}

// Ex 8.7 Unwrapping multiple optionals

//var errorCodeString: String?
//errorCodeString = "404!"
//if let theError = errorCodeString, let errorCodeInteger = Int(theError)     // You can unwrap two optionals in a single line
//{
//    print("\(theError): \(errorCodeInteger)")
//}
//else
//{
//    print("fail")
//}


// Ex. 8.7.1

//var errorCodeString: String! = nil
//let anotherErrorCodeString: String = errorCodeString    // Will this work?
//                                                        // This won't work because anotherErrorCodeString can't be of type optional, due to its explicitly declared type (String variable), so you can't assign a string variable to have an optional value
//
////let yetAnotherErrorCodeString = errorCodeString         // Will this be a type optional or implicitly unwrapped?
//                                                        // this will by type regular optional (String?)
//
//// to make yetAnotherErrorCodeString to be an implicitly unwrapped optional, the the compiler requires you to be explicit
//let yetAnotherErrorCodeString: String! = errorCodeString



// Ex 8.8 Optional binding and additional checks
// Only print the message if the errorCodeString can be converted to an int and the value is 404


//var errorCodeString: String?
//errorCodeString = "405"
//if let theError = errorCodeString, let errorCodeInteger = Int(theError), errorCodeInteger == 404
//{
//    print ("\(theError): \(errorCodeInteger)")
//}



// Ex 8.9 Optional chaining
// Your app has a custom error code.
// If you encounter a 404 you want to use your customized error code instead as well as an error description.


var errorCodeString: String?        // errorCodeString is an optional
errorCodeString = "404"
var errorDescription: String?
if let theError = errorCodeString, let errorCodeInteger = Int(theError), errorCodeInteger == 404
{
    errorDescription = "\(errorCodeInteger+200) : resource was not found"
}


// the question mark appended to the end of the errorDescription
// this line of code initiates the optional chaining process
// If there is no value in errorDescription, then there is no string to uppercase. In that case upCaseErrorDescription would be set to nil.

var upCaseErrorDescription = errorDescription?.uppercased()                         // there is a new variable called upCaseErrorDescription
errorDescription



// Ex 8.10 Modifying in place
// append AKA add to the upCaseErrorDescription string


// The ? at the end of upCaseErrorDescription works similarly to optional chaining: It exposes the value of the optional if it exists.
// If upCaseErrorDescription were nil, then the optional would not have been modified because no value would exist to update.
upCaseErrorDescription?.append(" PLEASE TRY AGAIN.")
upCaseErrorDescription
print(upCaseErrorDescription ?? "")



// Ex 8.11 Using optional binding to parse errorDescription
/**
 A common operation when dealing with optionals is to either get the value if the optional contains a value
 or to use some default value if the optional is nil.
 For ex, when pulling the error info inside of errorDescription, you might want to default to "No error" if the string does not contain an error.
 You could accomplish this with optional binding.
**/


//let description: String                         // description = a new variable that is not an optional
//if let errorDescription = errorDescription      // errorDescription = a new variable??? but it is defined on line 123
//{
//    description = errorDescription
//}
//
//else
//{
//    description = "No error"
//
//}

// PROBLEM with code above
// You had to write a lot of code for what should be a simple operation: Get the value from the optional or use "No error" if the optional is nil.
// This can be solved via the nil coalescing operator:??




// Ex 8.12 Using the nil coalescing operator 
// let description = errorDescription ?? "No error"


// Ex 8.13 Changing errorDescription

errorDescription = nil
let description = errorDescription ?? "No error"


// Bronze Challenge
/**
 Optionals are best used for things that can literally be nil
 They are useful in representing the complete absence of something.
 But nonexistence is not the same as zero.
 **/

// The number of kids a parent has
var numberOfKids : Int

// The name of a person's pet
var petName : String?



// Silver Challenge
/**
 Force-unwrapping an optional when it is nil.
 **/

//print(petName!)
print(petName ?? "default petName")





