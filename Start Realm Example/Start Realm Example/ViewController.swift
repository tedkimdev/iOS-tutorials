//
//  ViewController.swift
//  Start Realm Example
//
//  Created by aney on 2017. 1. 31..
//  Copyright © 2017년 aney. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        /* write Data */
        let realmWriter = try! Realm()
        let firstPerson = Person(value: [Date(), "Hi~ Aney"])
        
        try! realmWriter.write {
            realmWriter.add(firstPerson)
        }
        //Realm Path
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        /* read Data */
        let realmReader = try! Realm()
        let people = realmReader.objects(Person.self)
        
        for person in people {
            let text = person.text
            let date = person.date
            print(text)
            print(date)
            print("===============================")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

