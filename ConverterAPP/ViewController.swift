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
            button.isHidden = !button.isHidden
        
        }
        
        
        
    }
    
    @IBAction func unitTapped(_ sender: Any) {
        
        
        
    }
}

