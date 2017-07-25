//Ch11_Sets



/**
 Ex 11.1 Creating a set
 
 **/

var groceryBag = Set<String>()



/**
 Ex 11.2 Adding to a set
 
 **/

var groceryBag2 = Set<String>()
groceryBag2.insert("Apples")
groceryBag.insert("Oranges")
groceryBag2.insert("Pineapple")


/**
 Ex 11.3 Looping through a set
 
 **/


var groceryBag3 = Set<String>()
groceryBag3.insert("Apples")
groceryBag3.insert("Oranges")
groceryBag3.insert("Pineapple")

for food in groceryBag3
{
    print(food)
}

/**
 Ex 11.4 Creating a set, redux
 
 **/

var groceryBag4 = Set(["Apple", "Orange", "Pineapple"])

print("\n")
for food in groceryBag4
{
    print(food)
}



/**
 Ex 11.5 Has bananas?
 
 **/
print("\n")
var groceryBag5 = Set(["Apples", "Oranges", "Pineapple"])
for food in groceryBag5
{
    print(food)
}
let hasBananas = groceryBag5.contains("Bananas")



/**
 Ex 11.6 Combining sets
 
 Notice that union returns a Set that does not contain two oranges, it only returns the unique common elements
**/

print("\n")
var groceryBag6 = Set(["Apples", "Oranges", "Pineapple"])
for food in groceryBag6
{
    print(food)
}
let hasBananas6 = groceryBag6.contains("Bananas")

let friendsGroceryBag6 = Set(["Bananas","Cereal","Milk","Oranges"])
let commonGroceryBag6  = groceryBag6.union(friendsGroceryBag6)


/**
 Ex 11.7 Intersection sets
 
**/

print("\n")
var groceryBag7 = Set(["Apple","Oranges","Pineapple"])

let hasBananas7 = groceryBag7.contains("Bananas")

let friendGroceryBag7 = Set(["Bananas","Cereal","Milk","Oranges"])
let commonGroceryBag7 = groceryBag7.union(friendGroceryBag7)

let roommatesGroceryBag7 = Set(["Apple","Bananas","Cereal","Toothpaste"])
let itemsToReturn7 = commonGroceryBag7.intersection(roommatesGroceryBag7)



/**
 Ex 11.8 Detecting intersections in sets
 
 **/

var groceryBag8 = Set(["Apples","Oranges","Pineapples"])
let hasBananas8 = groceryBag8.contains("Bananas")

let friendsGroceryBag8 = Set(["Bananas","Cereal","Milk","Oranges"])
let commonGroceryBag8 = groceryBag8.union(friendsGroceryBag8)

let roommatesGroceryBag8 = Set(["Apples","Bananas","Cereal","Toothpaste"])
let itemsToReturn8 = commonGroceryBag8.intersection(roommatesGroceryBag8)

let yourSecondBag = Set(["Berries","Yogurt"])
let roommatesSecondBag = Set(["Grapes", "Honey"])

// it is true that the two grocery bags do not share any items
let disjoint = yourSecondBag.isDisjoint(with: roommatesSecondBag)


// Bronze
// Find a method on Set that returns a Bool indicating whether myCities contains all of the cities contained by yourCities

let myCities = Set(["Atlanta","Chicago","Jacksonville","Ney York","San Francisco"])
let yourCities = Set(["Chicago","San Francisco","Jacksonville"])

// is it true that these sets do not share any common items?
// false, these sets do share items in commom
let disjointCities = myCities.isDisjoint(with: yourCities)

// does myCities contains everything in yourCities?
// true
let mySuperSet = myCities.isSuperset(of: yourCities)



// Silver
// Rather than create new instances, modify the existing instances in place 
// for union(.intersection) and intersection (.isDisjoint)

//groceryBag8.formUnion(friendsGroceryBag8)
groceryBag8.formIntersection(friendsGroceryBag8)

