//
//  JsonArray.swift
//  iOS10 Custom Table Example
//
//  Created by aney on 2017. 2. 5..
//  Copyright © 2017년 aney. All rights reserved.
//

import Foundation

struct JsonArray {
    var array : [[String:Any]] = []
 
    mutating func makeJsonArray(jsonData: Data) {
        let json = try? JSONSerialization.jsonObject(with: jsonData, options: [])
        if let tempArray = json as? Array<[String:Any]> {
            array = tempArray
        }
    }
}
