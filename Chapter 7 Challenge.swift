/*:
 # Chapter Challenge: Combat Actions
 ---
 
 ### Tasks
 1. Create an enumeration called **ActionError** that adopts the **Error** protocol with three cases - **InsufficientMP**, **OutOfRange**, and **UnknownError**
 2. Declare a function called **attackEnemy** that takes in an integer named **mp** and a double named **distance** as parameters and returns an optional boolean.
 3. Mark **attackEnemy** as a throwable function
 4. Add two guard statements - if **mp** is less than 10 throw **InsufficientMP**, if **distance** is greater than 5.89 throw **OutOfRange**
 5. If both guard statements pass, return true
 6. Use a **do-catch* statement to call **attackEnemy** and handle each error case individually
 7. Unwrap the optional return value from **attackEnemy** using an **if-let** statement
 
 [Previous Topic](@previous)
 
 */
// 1

enum ActionError: Error {
    case InsufficientMP
    case OutOfRange
    case UnknownError
}

// 2 - 3, for task 3 use the throws keyword
func attackEnemy(mp: Int, distance: Double) throws -> Bool? {
    return true
    
    // 4
    guard mp > 10 else {
        throw ActionError.InsufficientMP
    }
    guard distance < 5.89 else {
        throw ActionError.OutOfRange
    }
    // 5
    return true
}

// 6

do {
    try attackEnemy(mp: 9, distance: 10)
    print("Attack landed!")
} catch ActionError.InsufficientMP {
    print("Sorry you dont have enough MP for that one...")
} catch ActionError.OutOfRange {
    print("The enemy is too far away to hit...")
} catch ActionError.UnknownError {
    print("Not sure what happend there boss")
} catch {
    print("Undefiend error detected...")
}

// 7
if let attackSuccess = try? attackEnemy(mp: 55, distance: 5) {
    print("Attack success: \(attackSuccess)")
}

