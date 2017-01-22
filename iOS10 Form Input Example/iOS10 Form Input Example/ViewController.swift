//
//  ViewController.swift
//  iOS10 Form Input Example
//
//  Created by aney on 2017. 1. 22..
//  Copyright © 2017년 aney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var autoRefreshLabel: UILabel!
    @IBOutlet weak var playSoundsLabel: UILabel!
    @IBOutlet weak var showPhotosLabel: UILabel!
    
    var preferences: Preferences = Preferences() {
        didSet {
            updateLabels()
        }
    }
    
    private func updateLabels() {
        autoRefreshLabel.text = preferences.autoRefresh ? "Yes" : "No"
        playSoundsLabel.text = preferences.playSounds ? "Yes" : "No"
        showPhotosLabel.text = preferences.showPhotos ? "Yes" : "No"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showPreferencesSegue" {
            let navController = segue.destination as! UINavigationController
            let prefsVC = navController.topViewController as! PreferencesTableTableViewController
            prefsVC.currentPrefs = self.preferences
        }
    }
    
    
    @IBAction func didSavePreferences(segue: UIStoryboardSegue){
        if let prefsVC = segue.source as? PreferencesTableTableViewController {
            self.preferences = prefsVC.preferencesFromTableData()
            
            print("Save button is tapped.")
            updateLabels()
        }
    }
    
    @IBAction func didCancelPreferences(segue:UIStoryboardSegue) {
        print("Cancel button is tapped.")
    }
}

