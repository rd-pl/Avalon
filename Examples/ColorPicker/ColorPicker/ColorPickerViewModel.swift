//
//  ColorPickerViewModel.swift
//  ColorPicker
//
//  Created by Colin Eberhardt on 09/11/2014.
//  Copyright (c) 2014 Colin Eberhardt. All rights reserved.
//

import Foundation
import UIKit

class ColorPickerViewModel: NSObject {
  
  dynamic let colorModes = ["RGB", "HSL"]
  
  dynamic var red: Double = 0.2 {
    didSet {
      updateColor()
    }
  }
  
  dynamic var green: Double = 0.5 {
    didSet {
      updateColor()
    }
  }
  
  dynamic var blue: Double = 0.7 {
    didSet {
      updateColor()
    }
  }
  
  dynamic var selectedSegmentIndex: Int = 0 {
    didSet {
      updateColor()
    }
  }
  
  dynamic var color: UIColor = UIColor.whiteColor()
  
  func updateColor() {
    if selectedSegmentIndex == 0 {
      color = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1.0)
    } else {
      color = UIColor(hue: CGFloat(red), saturation: CGFloat(green), brightness: CGFloat(blue), alpha: 1.0)
    }
  }
  
  override init() {
    super.init()
    updateColor()
  }
  
}