import Foundation
import ArgumentParser

struct Store: ParsableCommand {
    @Flag()
    var get: Bool = false
    
    @Argument()
    var name: String
    
    @Argument()
    var value: String?
    
    mutating func run() throws {
        if get {
            guard let storedValue = UserDefaults.standard.value(forKey: name) else {
                print("No value stored for Key '\(name)'")
                return
            }
            print("(\(name)): \(storedValue)")
        } else {
            print("Saving: \(String(describing: value)) for Key '\(name)'")
            UserDefaults.standard.set(value, forKey: name)
        }
    }
}


Store.main()
