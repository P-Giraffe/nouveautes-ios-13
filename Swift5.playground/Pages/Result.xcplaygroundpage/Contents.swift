//: [Previous](@previous)

import Foundation

enum LoadError : Error {
    case NotFound
    case InvalidRequest
}

struct Player {
    let name:String
    let score:Int
}

class PlayerManager {
    func loadPlayer(withName name:String) -> Result<Player,LoadError> {
        guard name.count > 0 else { return Result.failure(LoadError.InvalidRequest) }
        return Result.success(Player(name: "Bob l'éponge", score: 20))
    }
    func loadPlayer2(withName name:String) -> Result<Player,LoadError> {
        guard name.count > 0 else { return .failure(.InvalidRequest) }
        return .success(Player(name: "Bob l'éponge", score: 20))
    }
}

let pm = PlayerManager()
let result = pm.loadPlayer(withName: "Bob l'éponge")
switch result {
case .success(let loadedPlayer):
    print(loadedPlayer.score)
case .failure(let error):
    print("Erreur")
}


//: [Next](@next)
