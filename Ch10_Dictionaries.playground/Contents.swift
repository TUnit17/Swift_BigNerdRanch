// Ch10 Dictionaries
// 1) create an initialize a dictionary
// 2) loop through dictionaries
// 3) access and modify dictionaries via their keys



// Ex 10.1 Creating a dictionary
//var movieRatings = ["Donnie Darko": 5, "Chungking Express": 5, "Dark City": 4]

// Ex 10.2 Using count
//print("I have rated \(movieRatings.count) movies")


// Ex 10.3 Reading a value from the dictionary
// You access values from a dictionary by supplying the key associated with the value you would like to retrieve


//let darkoRating = movieRatings["Donnie Darko"] // Donnie Darko is the key <-- of type optional Int




// Ex 10.4 Modifying a value
//var movieRatings = ["Donnie Darko": 5, "Chungking Express": 5, "Dark City": 4]
//print("movie count: \(movieRatings.count)")
//let darkoRating = movieRatings["Donnie Darko"]
//movieRatings["Dark City"] = 5
//movieRatings



// Ex 10.5 Updating a value


//var movieRating = ["Donnie Darko" : 4, "Chungking Express" : 5, "Dark City": 4]
//print("movie count: \(movieRating.count)")
//let darkoRating = movieRating["Donnie Darko"]
//
//// Change the value of Dark City from 4 to 5
//// Dark City is the key, 5 is the value
//movieRating["Dark City"] = 5
//movieRating
//
//
//// for the key Donnie Darko, I want to update the value to 5
//// the updateValue method returns an optional
//// therefore we want to asign the returna value to a variable of type optional
//let oldRating: Int? = movieRating.updateValue(5, forKey: "Donnie Darko")
//
//movieRating.updateValue(6, forKey: "Donnie Darko")
//
//// the first  if statement = makes sure that oldRating can be unwrapped into a new variable, since it is an optional
//// the second if statement = makes sure that you can extract the value out of the movieRating dictionary into another variable
//if let lastRating = oldRating, let currentRating = movieRating["Donnie Darko"]
//{
//    print("Old rating: \(lastRating) ; current rating : \(currentRating)")
//
//}



// Ex 10.6 Adding a value
// Add the key The Cabinet of Dr Caligari, with value 5


//var movieRating = ["Donnie Darko" : 4, "Chungking Express" : 5, "Dark City": 4]
//print("movie count: \(movieRating.count)")
//let darkoRating = movieRating["Donnie Darko"]
//
//// Change the value of Dark City from 4 to 5
//// Dark City is the key, 5 is the value
//movieRating["Dark City"] = 5
//movieRating
//
//
//// for the key Donnie Darko, I want to update the value to 5
//// the updateValue method returns an optional
//// therefore we want to asign the returna value to a variable of type optional
//let oldRating: Int? = movieRating.updateValue(5, forKey: "Donnie Darko")
//
//movieRating.updateValue(6, forKey: "Donnie Darko")
//
//// the first  if statement = makes sure that oldRating can be unwrapped into a new variable, since it is an optional
//// the second if statement = makes sure that you can extract the value out of the movieRating dictionary into another variable
//if let lastRating = oldRating, let currentRating = movieRating["Donnie Darko"]
//{
//    print("Old rating: \(lastRating) ; current rating : \(currentRating)")
//    
//}
//movieRating["The Cabinet of Dr. Caligari"] = 5



/**
Ex 10.7: Remove the entry for Dark City
**/

//var movieRating = ["Donnie Darko" : 4, "Chungking Express" : 5, "Dark City": 4]
//print("movie count: \(movieRating.count)")
//let darkoRating = movieRating["Donnie Darko"]
//
//// Change the value of Dark City from 4 to 5
//// Dark City is the key, 5 is the value
//movieRating["Dark City"] = 5
//movieRating
//
//
//// for the key Donnie Darko, I want to update the value to 5
//// the updateValue method returns an optional
//// therefore we want to asign the returna value to a variable of type optional
//let oldRating: Int? = movieRating.updateValue(5, forKey: "Donnie Darko")
//
//movieRating.updateValue(6, forKey: "Donnie Darko")
//
//// the first  if statement = makes sure that oldRating can be unwrapped into a new variable, since it is an optional
//// the second if statement = makes sure that you can extract the value out of the movieRating dictionary into another variable
//if let lastRating = oldRating, let currentRating = movieRating["Donnie Darko"]
//{
//    print("Old rating: \(lastRating) ; current rating : \(currentRating)")
//    
//}
//movieRating["The Cabinet of Dr. Caligari"] = 5
//movieRating.removeValue(forKey: "Dark City")        // .removeValue returns an optional of the type that was removed


/**
Ex 10.8 : Setting the key's value to nil
Set Dark City to nil
The result is the same, but the strategy does not return the removed key's value
 
**/

var movieRating = ["Donnie Darko": 4, "Chungking Express" : 5, "Dark City": 4]
print("movie count \(movieRating.count)")
let darkoRating = movieRating["Donnie Darko"]

// Change the value of Dark City from 4 to 5
movieRating["Dark City"] = 5

// use .updateValue to update a value
// benefit = it gives you a handle on the last value to whuch the key was mapped
let oldRating: Int? = movieRating.updateValue(5, forKey: "Donnie Darko")
if let lastRating = oldRating, let currentRating = movieRating["Donnie Darko"]
{
    print(" Old rating: \(lastRating) ; current rating: \(currentRating)")
}

movieRating["The Cabinet of Dr. Caligari"] = 5
movieRating["Dark City"] = nil
movieRating.removeValue(forKey: "Dark City")



/**
Ex 10.9 Looping through your dictionary
**/

var movieRatings9 = ["Donnie Darko" : 4, "Chungking Express" : 5, "Dark City" : 4]

// get the value
let darkRating9 = movieRating["Donnie Darko"]

// update the value of Dark City from 4 to 5
movieRatings9["Dark City"] = 5


// update the value of Dark City from 5 to 6
let oldRating9: Int? = movieRatings9.updateValue(6, forKey: "Dark City")

// if both values can be unwrapped and do not return nil
if let lastRating9 = oldRating9, let currentRating9 = movieRatings9["Dark City"]
{
    print("Dark City Old rating: \(lastRating9) , Current rating: \(currentRating9)")
}

// add value to dictionary
movieRatings9["The Cabinet of Dr Caligari"] = 5

// setting value to nil
movieRatings9["Dark City"] = nil

// loop through dictionary
for(key,value) in movieRatings9
{
    print("The movie \(key) was rated \(value).")
}



/**
Ex 10.10 Loop and print out just the keys
**/

// initialize dictionary with values
var movieRating10 = ["Donnie Darko" : 4, "Chungking Express": 5, "Dark City": 4]


// get the value
let darkoRating10 = movieRating10["Donnie Darko"]

// update the value of Dark City from 4 to 5
movieRating10["Dark City"] = 5

// update the value of Dark City from 5 to 6
let oldRating10: Int? = movieRating10.updateValue(6, forKey: "Dark City")

// if both values can be unwrapped and do not return nil
if let lastRating10 = oldRating10, let currentRating10 = movieRating10["Dark City"]
{
    print("Dark City Old rating: \(lastRating10) , Current rating: \(currentRating10)")
}

// add value to dictionary
movieRating10["The Cabinet of Dr. Caligari"] = 5

// setting a value to nil
movieRating10["Dark City"] = nil

// looping through the keys
for movie in movieRating10.keys
{
    print(" User has rated \(movie)")
}



/**
Ex 10.11 Creating an immutable dictionary
**/

let album = ["Snoop" : 1, "Dr Dre": 2, "The Game" : 3, "Ice Cube": 4]
//album["Snoop"] = 55



/**
Ex 10.12 Sending keys to an array 
 
Why send a dictionary into an array?
You want to list all of the movies that have been rated, without their ratings
 
**/


// Create and initialize dictionary (key: value)
var movieRatings12 = ["Donnie Darko" : 4, "ChungKing Express" :5, "Dark City" : 4]

// get the value from a dictionary
let darkoRating12 = movieRatings12["Donnie Darko"]

// update a movie rating
movieRatings12["Dark City"] = 5

// update movie rating
let oldRating12: Int? = movieRatings12.updateValue(6, forKey: "Dark City")

// if both values can be unwrapped and do not return nil
if let lastRating12 = oldRating12, let currentRating12 = movieRatings12["Dark City"]
{
    print("Dark City old rating: \(lastRating12)   , current rating: \(currentRating12)")
}

// loop through all the keys
for movie in movieRatings12.keys
{
    print("User has rated \(movie)")
}

// send dictionary keys to an array
let watchedMovies = Array(movieRatings12.keys)
print(watchedMovies)


/**
Silver Challenge: Create a dictionary that represents a state
 
- Each key should map to an array (the holds 5 zip codes)

**/


var county1 = [1,2,3,4,5]
var county2 = [6,7,8,9,10]
var county3 = [11,12,13,14,15]

var state = ["County1" : county1, "County2": county2, "County3" : county3]
print(state)


// Gold Challenge

print("State has the following zip codes: \(county1)\n                                   \(county2)\n                                   \(county3)")











