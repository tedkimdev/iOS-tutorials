//
//  ViewController.swift
//  iOS10 MVVM Pattern Example
//
//  Created by aney on 2017. 1. 31..
//  Copyright © 2017년 aney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthDateLabel: UILabel!

    var person: Person?
    var personViewModel: PersonViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        person = Person(firstName: "aney", lastName: "Kim", salutation: "test", birthDate: Date(timeIntervalSince1970: 1*60*60*24))
        personViewModel = PersonViewModel(person: person!)
        
        //This is MVC Pattern
        nameLabel.text = "\((person?.firstName)!) \((person?.lastName)!)"
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE MMMM d, yyyy"
        birthDateLabel.text = dateFormatter.string(from: (person?.birthDate)!)
        
        //This is MVVM Pattern
        nameLabel.text = personViewModel?.fullNameText
        birthDateLabel.text = personViewModel?.birthDateText
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

