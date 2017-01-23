//
//  ViewController.swift
//  iOS10 Password Input Example
//
//  Created by aney on 2017. 1. 23..
//  Copyright © 2017년 aney. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var levelView: UIView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBAction func checkButton(_ sender: Any) {
        updateView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        passwordInput.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func passwordChanged(_ sender: Any) {
        updateView()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func passwordValidator(password: String) -> Int {
        
        if password.characters.count == 0 {
            return 0
        }
        
        if password.characters.count < 8 {
            
            if hasNumbers(str: password) && !hasCharacters(str: password) && !hasSpecials(str: password) {
                return 1
            } else if !hasNumbers(str: password) && hasCharacters(str: password) && !hasSpecials(str: password) {
                return 2
            } else if hasNumbers(str: password) && hasCharacters(str: password) && !hasSpecials(str: password) {
                return 3
            } else {
                return 2
            }
            
        } else if password.characters.count > 8 {
            
            if hasNumbers(str: password) && hasCharacters(str: password) && !hasSpecials(str: password) {
                return 4
            } else if hasNumbers(str: password) && hasCharacters(str: password) && hasSpecials(str: password) {
                return 5
            } else {
                return 2
            }
            
        }
        
        return 0
    }
    
    func updateView() {
        
        let level = passwordValidator(password: passwordInput.text!)
        
        switch level {
            
        case 1:
            descriptionLabel.text = "very weak password"
            levelView.backgroundColor = UIColor.red
            break
        case 2:
            descriptionLabel.text = "weak password"
            levelView.backgroundColor = UIColor.orange
            break
        case 3:
            descriptionLabel.text = "normal password"
            levelView.backgroundColor = UIColor.yellow
            break
        case 4:
            descriptionLabel.text = "strong password"
            levelView.backgroundColor = UIColor.blue
            break
        case 5:
            descriptionLabel.text = "very strong password"
            levelView.backgroundColor = UIColor.green
            break
            
        default:
            descriptionLabel.text = "input password"
            levelView.backgroundColor = UIColor.black
            break
        }
        
    }
    
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
}
