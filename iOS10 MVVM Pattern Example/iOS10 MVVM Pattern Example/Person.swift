//
//  Person.swift
//  iOS10 MVVM Pattern Example
//
//  Created by aney on 2017. 1. 31..
//  Copyright © 2017년 aney. All rights reserved.
//

import Foundation

class Person {
    var firstName: String?
    var lastName: String?
    var birthDate: Date?
    
    init(firstName: String, lastName: String, salutation: String, birthDate: Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthDate = birthDate
    }
}
