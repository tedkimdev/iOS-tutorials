//
//  Person.swift
//  Start Realm Example
//
//  Created by aney on 2017. 2. 6..
//  Copyright © 2017년 aney. All rights reserved.
//

import Foundation
import RealmSwift

class Person: Object {
    dynamic var date = NSDate(timeIntervalSince1970: 1)
    dynamic var text = ""
}
