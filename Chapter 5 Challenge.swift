// 1
typealias Attack = (name: String, damage: Int)


// 2
func attackEnemy(damage: Int) {
    print("You hit the enemy for amaount of \(damage) damage!\n")
}


// 3
func attackEnemy(attack: Attack) -> String {
    return "Enemy was attacked wtih \(attack.name)\nEnemy hit for \(attack.damage) damage!\n"
}



// 4
attackEnemy(damage: 90)
var message = attackEnemy(attack: ("Power Slam", 55))
print(message)



// 5
typealias AttackClosure = ([Attack]) -> Void
let playerActions = [("Mist Bomb", 45), ("Rangers Eye", 15), ("Shield Slam", 100)]




// 6
func fetchPlayerAttacks(closure: AttackClosure) {
    closure(playerActions)
}



// 7

fetchPlayerAttacks { (attackOptions) in
    
    for (name, damage) in attackOptions {
     print("\(name) will hit for \(damage) if cast...")
        
    }
}
