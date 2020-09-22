//
//  ViewController.swift
//  Today Widget Size
//
//  Created by gondo on 27/05/2020.
//  Copyright © 2020 gondo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let size = UIScreen.main.bounds
        
        label.text = "\(size.width) x \(size.height)"
    }
}

