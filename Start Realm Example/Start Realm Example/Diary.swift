//
//  Diary.swift
//  Start Realm Example
//
//  Created by aney on 2017. 1. 31..
//  Copyright © 2017년 aney. All rights reserved.
//

import Foundation
import RealmSwift

class People: Object {
    
    dynamic var date = NSDate(timeIntervalSince1970: 1)
    dynamic var text = ""
    
//  override static func ignoredProperties() -> [String] {
//    return []
//  }
}
