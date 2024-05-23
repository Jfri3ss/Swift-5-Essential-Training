/*:
 # Chapter Challenge -> Merchant Shop
 ---
 ### Tasks
 1. Create an array called **shopItemsArray** and fill it with a few strings, then create a dictionary called **shopItemsDictionary** with keys that match your array items, with prices for their values
 2. Use the `contains` method to check if **shopItemsArray** has the item you want (make it an item that is not in the array)
 3. Use the `insert` method to add the missing item to **shopItemsArray** at an index you choose
 4. Create a new variable called **selectedItem** and assign it an item from **shopItemsArray** by using subscript syntax.
 5. Create another variable called **selectedItemPrice** and use **selectedItem** and subscript syntax to access it's value from **shopItemsDictionary**
 6. Create a set called **fullArmorSet** and assign it a few string values, then create a second set called **currentArmorSet** and assign it some, but not all, of the same values as **fullArmorSet**
 7. Use the `subtract` method to find out which items **currentArmorSet** is missing for a complete set
 8. Create a tuple called **armorPieceTuple** and assign it named variables for *name*, *cost*, and *canEquip*, all with initial values. Then access the canEquip value with dot notation.
 
 [Previous Topic](@previous)
 
 */

// 1
var shopItemsArray: [String] = ["Leather bag", "Heavy Axe", "Boots", "Healing Potion", "Heavy Armor"]
var shopItemsDictionary: [String: Int] = ["Leather bag": 10, "Heavy Axe": 25, "Boots": 5, "Healing Potion": 4, "Heavy Armor": 50]

// 2
var glovesInStock = shopItemsArray.contains("Gloves")

// 3
shopItemsArray.insert("Gloves", at: 5)
print(shopItemsArray)

// 4 (Review)
var selectedItem = shopItemsArray[4]

// 5 (Review)
var selectedItemPrice = shopItemsDictionary[selectedItem]
print(selectedItem)

// 6
var fullArmorSet: Set = ["Breast-plate", "Plate leg covers", "Helm", "Chainmail", "Backplate"]
var currentArmorSet: Set = ["Breast-plate", "Helm", "Arm plate-covers", "Plate-boots", "Neck-cover"]

// 7
var differenceInArmor = fullArmorSet.subtracting(currentArmorSet)

// 8 (Review)
var armorPieceTuple: (name: String, cost: Int, canEquip: Bool) = ("Shieldslam", 40, true)
armorPieceTuple.0
armorPieceTuple.1
armorPieceTuple.2

//Or Write Tuple like this (example)
var armorPeice = (name: "Gold Plate", cost: 65, canEquip: true)
armorPieceTuple.2


