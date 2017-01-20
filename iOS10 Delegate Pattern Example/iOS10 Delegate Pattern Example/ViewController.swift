//
//  ViewController.swift
//  iOS10 Delegate Pattern Example
//
//  Created by aney on 2017. 1. 20..
//  Copyright © 2017년 aney. All rights reserved.
//

import UIKit

class ViewController: UIViewController, ColorPickerDelegate {

    @IBAction func openColorPickerTapped(sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let colorPickerVC = storyboard.instantiateViewController(withIdentifier: "ColorPicker") as! ColorPickerViewController
        colorPickerVC.delegate = self
        present(colorPickerVC, animated: true, completion: nil)
    }
    
    func colorPicker(picker: ColorPickerViewController, didPickColor color: UIColor?) {
        if let selectedColor = color {
            view.backgroundColor = selectedColor
        }
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

