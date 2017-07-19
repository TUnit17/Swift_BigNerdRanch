// CH 7 Strings


import UIKit



/**

 
 
**/





// Ex 7.1
var str = "Hello, playground"
let playground = "Hello playground" // constant


// Ex 7.2 mutable string
var mutablePlayground = "Hello mutable playground"


// Ex 7.3 Adding to a mutable string
mutablePlayground += "!"

// Ex 7.4 loop through mutablePlayground's Characters
/**
The characters that comprise Swift's strings are of the Character type.
You use Swift's character type to represent Unicode characters and in combination, Characters form a String instance
 
**/
for c: Character in mutablePlayground.characters        // access the string's character property
{
    print("\(c)")
}



// Ex 7.5 Using a Unicode scalar
/**
 - Strings are composed of Unicode scalars
 - Unicdoe scalars are 21-bit numbers that represend a specific character in the Unicode standard.
 - U+0061 represents "a"
 - U+1F60E represents smiley emoji with sunglasses, the 1F60E portion is a number written in hexadecimal, base 16
 
**/
let oneCoolDude = "\u{1F60E}"       // the \u{} syntax represents the Unicode scalar whose hexadecimal number apprears between the braces.

/**
 - How does this relate to strings?
 - It turns out that every string in Swift is composed of Unicode scalars
 
 - So why do they look unfamiliar?
 
 **/




// Ex 7.6 Using a combining scalar
let aAcute = "\u{0061}\u{0301}"

/**
 - Every character in Swift is an extened grapheme cluster.
 - Extended Grapheme cluster =are sequences of one or more Unicode scalars that combine to produce a single human-readable character. 
 - Making characters extended grapheme clusters gives Swift flexibility in dealiung with complex script characters.
 
 **/




// Ex 7.7 Revealing the Unicode scalars behind a string
for scalar in playground.unicodeScalars
{
    print("\(scalar.value)")

}
print("\u{72}")    // How is this "H"?


 /**
 - What do all these numbers mean?
 - Each is represented as an unsigned 32-bit integer.
 - 72 corresponds to the Unicode scalar value of U+0048 or "H"
 
 **/


// Ex 7.8 Usung a precomposed character
let aAcutePrecomposed = "\u{00E1}"


// Ex 7.9 Checking equivalence
let b = (aAcute == aAcutePrecomposed)
 /**
 - aAcute was created using two Unicode scalars
 - aAcutePrecomposed was created using only one 
 - Why are these two equivalent? 
 - Canonical equivalence = whether two sequences of Unicode scalars are the same linguistically
 - Two characters or two strings are considered equal if they have the same linguistic meaning and appearance, regardless of whether they are built from the same Unicode scalars
 **/




// Ex 7.10 Counting Characters
print("aAcute: \(aAcute.characters.count); aAcutePrecomposed: \(aAcutePrecomposed.characters.count)")
//Both aAcute and aAcutePrecomposed are 1 character long.
 




// Ex 7.11 Finding the 5th character in "Hello Playground"
let start = playground.startIndex                   // the first character in the string
let end = playground.index(start, offsetBy: 4)      // the 5th character in the string
let fifthCharacter = playground[end]


//let index = playground[3]
// This doesnt work
// The Swift compiler will not let you acces a specific character on a string via a subscript index. 
// You cannot index a string with an integer because Swift does not know which Unicode scalar corresponds to a give index, without stepping through every preceding character. This operation can be expensive. Therefore, Swift forces you to be more explicit.



// Ex 7.12 Pulling out a range
let range = start ... end               // range will grab the first 5 characters
let firstFive = playground[range]


// Bronze Challenge
 /**
 
 **/

let empty = "123"
let startIndex = empty.startIndex   // .startIndex accesses the position of the first Character of a String
let endIndex   = empty.endIndex     // .endIndex is the position after the last character in a String 
                                    // NOTE: the endIndex property isnt a valid argument to a string' subscript

print( "empty: \(empty.characters.count)")


if empty.isEmpty
{
    print("nothing in this string")
}


// https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/StringsAndCharacters.html

let greeting = "Guten Tag!"
greeting[greeting.startIndex]                           // G
// greeting[greeting.endIndex]                          // DOES NOT WORK because it is out-of-bounds
greeting[greeting.index(before: greeting.endIndex)]     // ! 

let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]


// Silver Challenge
// replace "Hello" with an instance created out of Unicode scalars
var hello = "Hello"
var helloUnicode = "\u{0048}\u{0065}\u{006C}\u{006C}\u{006F}"
let c = (hello == helloUnicode)
