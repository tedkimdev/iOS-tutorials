//
//  ColorPickerViewController.swift
//  iOS10 Delegate Pattern Example
//
//  Created by aney on 2017. 1. 20..
//  Copyright © 2017년 aney. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController {

    weak var delegate: ColorPickerDelegate?
    var initialColor: UIColor?
    
    @IBOutlet weak var colorsSegmentedControl: UISegmentedControl!
    
    let colors = [("Cyan", UIColor.cyan),  ("Magenta", UIColor.magenta), ("Yellow", UIColor.yellow)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initialize segmented control and select the starting color if it is one of our segments
        colorsSegmentedControl.removeAllSegments()
        var selectedIndex = UISegmentedControlNoSegment
        
        for (index, color) in colors.enumerated() {
            if color.1.isEqual(initialColor) {
                selectedIndex = index
            }
            colorsSegmentedControl.insertSegment(withTitle: color.0, at: index, animated: false)
        }
        colorsSegmentedControl.selectedSegmentIndex = selectedIndex
    }
    
    func colorFromSelection() -> UIColor? {
        let selectedIndex = colorsSegmentedControl.selectedSegmentIndex
        if selectedIndex != UISegmentedControlNoSegment {
            return colors[selectedIndex].1
        }
        return nil
    }
    
    @IBAction func doneButtonTapped(sender: AnyObject) {
        delegate?.colorPicker(picker: self, didPickColor: colorFromSelection())
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
