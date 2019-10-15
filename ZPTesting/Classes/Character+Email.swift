//
//  Character+Email.swift
//  Pods-ZPTesting_Example
//
//  Created by Zsolt Pete on 2019. 10. 14..
//

extension Character {
    
    func isDot() -> Bool {
        return self == "."
    }
    
    func isAt() -> Bool {
        return self == "@"
    }
    
    func isEmailSpecial() -> Bool {
        return self.isDot() || self.isAt()
    }
    
}

