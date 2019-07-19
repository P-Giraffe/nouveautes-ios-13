//: [Previous](@previous)

import Foundation

struct Player : Equatable {
    let name:String
    let score:Int
}

func objectToCompare() -> some Equatable {
    return "Hello"
}

let p1 = Player(name: "Bob", score: 1)
let p2 = Player(name: "Bob", score: 1)
if p1 == p2 {
    print("Ce sont les mêmes joueurs")
}

let o1 = objectToCompare()
//        let v = self.view
let o2 = objectToCompare()
if o1 == o2 {
    print("Ce sont les mêmes objets")
}






//: [Next](@next)
