//
//  Person.swift
//  swift-people
//
//  Created by Douglas Galante on 9/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    var name: String
    var ageInYears: Int? = nil
    var skills: [String] = []
    var qualifiedTutor: Bool { return skills.count >= 4 }
    
    init (name: String, ageInYears: Int?) {
        self.name = name
        if let ageInYears = ageInYears {
            self.ageInYears = ageInYears
        }
    }
    
    convenience init (name x: String) {
        self.init(name: x, ageInYears: nil)
    }
    
    convenience init () {
        self.init (name: "John Doe", ageInYears: nil)
    }
    
    func celebrateBirthday () -> String {
        var birthdayMessage = ""
        var ordinalForAge = ""
        
        //increments age
        if let age = self.ageInYears {
            self.ageInYears = age + 1
        }
        
        //put together birthday message with or without age
        if self.ageInYears == nil {
            birthdayMessage = "HAPPY BIRTHDAY, \(self.name.uppercased())!!!"
        } else {
            if let age = self.ageInYears {
                ordinalForAge = age.ordinal()
                birthdayMessage = "HAPPY \(age)\(ordinalForAge.uppercased()) BIRTHDAY, \(self.name.uppercased())!!!"
            }
        }
        return birthdayMessage
    }
    
    //add skills bash xcdoe objC swift interfaceBuilder
    func learnSkillBash () {
        if !self.skills.contains("bash"){
            self.skills.append("bash")
        }
    }
    func learnSkillObjectiveC () {
        if !self.skills.contains("Objective-C"){
            self.skills.append("Objective-C")
        }
    }
    func learnSkillXcode () {
        if !self.skills.contains("Xcode"){
            self.skills.append("Xcode")
        }
    }
    func learnSkillSwift () {
        if !self.skills.contains("Swift"){
            self.skills.append("Swift")
        }
    }
    func learnSkillInterfaceBuilder () {
        if !self.skills.contains("Interface Builder"){
            self.skills.append("Interface Builder")
        }
    }
    
    
}

