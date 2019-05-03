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
    
    override func viewDidLoad() {

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    
    // handle selction for class
    
    @IBAction func slectAUnit(_ sender: UIButton) {
        
        unitCollection.forEach { (button) in
            
            UIView.animate(withDuration: 0.3, animations: {
                   button.isHidden = !button.isHidden
                    self.view.layoutIfNeeded()
            
            
            
            })
        
        
        }
        
        
        
    }
    
    
    // handle when a unit is tapped to get value
    
    // TODO needs to be added latter
    
    /// equal to boton names
      enum convertFactors: String {
        case ftIN  = "Feet"
 

    }
    @IBAction func unitTapped(_ sender: UIButton) {
        guard let title = sender.currentTitle, let setConversionFactir = convertFactors(rawValue: title) else {
            return
        }
        var converterFactor = 0
        
        
        // set converter factor
            switch( setConversionFactir) {
                
                
                    case .ftIN:
                        converterFactor =  12
                
                    default:
                        converterFactor = 0
                
                
                    }
        
        }
    
    // do the math here to get units
}



