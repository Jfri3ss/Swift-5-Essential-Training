/*:
 # Chapter Challenge: Player Stats
 ---
 ### Tasks:
 1. Create 2 variables called **characterName** and **weaponClassification** and assign them string values of your choice.
 2. Use the **+=** operator to add a nickname string onto **characterName**.
 3. Create a variable called **currentMana** and assign it a decimal value.
 4. Create another variable called **manaPercentage** and assign it **currentMana** divided by 100, then explicitly convert it to a string.
 5. Create a variable called **debugStats** and use string interpolation to lay out your character stats in a creative way. (HINT: use **\n** to create line breaks)
 6. Create 2 boolean variables called **questAccepted** and **canQuest** respectively and assign them values of your choice.
 7. Use the **AND (&&)** operator to evaluate if **questAccepted** and **canQuest** are both true and store it in a variable called **questStatus**.
 8. Add an interpolated string that includes **questStatus** to **debugStats** using the **append** method and print out **debugStats**.
 
 [Previous Topic](@previous)
 
 */
// 1
var characterName = "Luxanna Crownguard"
var weaponClassification = "Lazer"

// 2
characterName += " \n Nickname: Lux"

// 3
var currentMana = 1000.90


// 4
var manaPercentage = String(currentMana / 100)


// 5
var debugStats = "Name: \(characterName) \n Ultamate: \(weaponClassification) \n Manna: \(currentMana) \n Mana Percent: \(manaPercentage)"


// 6
var questAccepted = true
var canQuest = false


// 7
var questStatus = questAccepted && canQuest


// 8
debugStats.append("\n Questing status: \(questStatus)")
print(debugStats)
