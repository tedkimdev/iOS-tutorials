//
//  ColorPickerDelegate.swift
//  iOS10 Delegate Pattern Example
//
//  Created by aney on 2017. 1. 20..
//  Copyright © 2017년 aney. All rights reserved.
//

import Foundation
import UIKit

protocol ColorPickerDelegate: AnyObject {
    func colorPicker(picker: ColorPickerViewController, didPickColor color: UIColor?)
}
