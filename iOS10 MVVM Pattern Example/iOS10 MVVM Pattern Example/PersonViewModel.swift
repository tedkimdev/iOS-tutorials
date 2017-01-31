//
//  PersonViewModel.swift
//  iOS10 MVVM Pattern Example
//
//  Created by aney on 2017. 1. 31..
//  Copyright © 2017년 aney. All rights reserved.
//

import Foundation

class PersonViewModel {
    private var person: Person
    
    var firstNameText: String? {
        return person.firstName
    }
    
    var lastNameText: String? {
        return person.lastName
    }
    
    var fullNameText: String? {
        return "\(person.firstName!) \(person.lastName!)"
    }
    
    var birthDateText: String? {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE MMMM d, yyyy"
        return dateFormatter.string(from: person.birthDate!)
    }
    
    
    
    init(person: Person) {
        self.person = person
    }
}
