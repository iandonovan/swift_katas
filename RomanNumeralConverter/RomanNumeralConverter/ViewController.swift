//
//  ViewController.swift
//  RomanNumeralConverter
//
//  Created by Smashing Boxes on 7/24/15.
//  Copyright (c) 2015 Smashing Boxes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  @IBOutlet weak var numberInputBox: UITextField!
  @IBOutlet weak var numeralText: UILabel!
  
  override func viewDidLoad() {
    numeralText.text = nil
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  @IBAction func convertNumberToRomanNumeral(sender: AnyObject) {
    if let number = numberInputBox.text.toInt() {
      let converter = RomanNumeral()
      numeralText.text = converter.romanize(number)
    }
  }
}

