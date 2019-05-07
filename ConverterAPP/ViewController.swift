//
//  ViewController.swift
//  ConverterAPP
//
//  Created by Liam Walsh on 4/17/19.
//  Copyright © 2019 Liam Walsh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var unitCollection: [UIButton]!
    
    @IBOutlet weak var textInput: UITextField!
    
    @IBOutlet weak var textOutput: UITextField!
    
    var convertUnits = false
    
    
    override func viewDidLoad() {

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    // handle selction for class
    
    @IBAction func slectAUnit(_ sender: UIButton) {
        
        unitCollection.forEach { (button) in
            button.isHidden = !button.isHidden
        
        }
        
        
        
    }

// handle when a unit is tapped to get value

// TODO needs to be added latter

/// equal to boton names
enum convertFactors: String {
    case ftIN = "Feet"
    case inFT = "Inches"
    case ftYD = "Yards"
    case ftMI = "Miles"
}


@IBAction func unitTapped(_ sender: UIButton) {
      let unitInput = Double (textInput.text!) ?? 0
    
    guard let title = sender.currentTitle, let setConversionFactor = convertFactors(rawValue: title) else {
        return
    }
    
    var converterFactor = Double(0)
    
    // need to make sure stufff is executed
    // set converter factor
    switch(setConversionFactor) {
        case .ftIN:
            converterFactor = 12
            convertUnits = true
        case .inFT:
            converterFactor = 1 / 12
            convertUnits = true
        case .ftYD:
            converterFactor = 1 / 3
            convertUnits = true
        case .ftMI:
            converterFactor = 1 / 5280
            convertUnits = true
    }
    
    let total = (converterFactor) *  unitInput
    
    
    textOutput.text = String(total)
    
    }
}
