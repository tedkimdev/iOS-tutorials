//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func hasNumbers(str: String) -> Bool {
    let regex = try! NSRegularExpression(pattern: "\\d", options: [])
    let range = NSMakeRange(0, str.characters.count)
    let result = regex.firstMatch(in: str, options: [], range: range)
    
    return result != nil
}

func hasCharacters(str: String) -> Bool {
    let regex = try! NSRegularExpression(pattern: "[A-Za-z]", options: [])
    let range = NSMakeRange(0, str.characters.count)
    let result = regex.firstMatch(in: str, options: [], range: range)
    
    return result != nil
}

func hasSpecials(str: String) -> Bool {
    let regex = try! NSRegularExpression(pattern: "[^\\w]", options: [])
    let range = NSMakeRange(0, str.characters.count)
    let result = regex.firstMatch(in: str, options: [], range: range)
    
    return result != nil
}

func hasWhiteSpaces(str: String) -> Bool {
    let regex = try! NSRegularExpression(pattern: "[\\s]", options: [])
    let range = NSMakeRange(0, str.characters.count)
    let result = regex.firstMatch(in: str, options: [], range: range)
    
    return result != nil
}

hasSpecials(str: "sd#")