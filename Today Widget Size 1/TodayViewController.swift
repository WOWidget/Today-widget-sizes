//
//  TodayViewController.swift
//  Today Widget Size 1
//
//  Created by gondo on 27/05/2020.
//  Copyright © 2020 gondo. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let compactSize = extensionContext!.widgetMaximumSize(for: .compact)
        let expandedSize = extensionContext!.widgetMaximumSize(for: .expanded)
        
        label.text = "\(compactSize.width) x \(compactSize.height) \n \(expandedSize.width) x \(expandedSize.height)"
        
    }
        
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
}
