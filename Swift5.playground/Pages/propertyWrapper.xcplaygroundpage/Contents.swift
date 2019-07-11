//: [Previous](@previous)

import Foundation

@propertyWrapper
struct UserDefault<DataType> {
    let key:String
    let defaultValue:DataType
    
    var wrappedValue: DataType {
        get {
            return UserDefaults.standard.object(forKey: key) as? DataType ?? defaultValue
        }
        set {
            UserDefaults.standard.set(newValue, forKey: key)
        }
    }
}

struct UserSettings {
    @UserDefault(key: "nickname", defaultValue: "Inconnu")
    static var nickname:String
    
    @UserDefault(key: "bestScore", defaultValue: 0)
    static var bestScore:Int
    
    @UserDefault(key: "hasFullVersion", defaultValue: false)
    static var hasFullVersion:Bool
}


//: [Next](@next)
