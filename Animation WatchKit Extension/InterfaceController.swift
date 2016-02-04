//
//  InterfaceController.swift
//  Animation WatchKit Extension
//
//  Created by Nicholas Smith on 2/4/16.
//  Copyright © 2016 Nicholas Smith. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var animation: WKInterfaceImage!
    @IBOutlet var button: WKInterfaceButton!
    
    var animated = true
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func buttonPressed() {

        if animated {
            animation.stopAnimating()
            animated = false
            button.setTitle("Start")
        } else {
            animation.startAnimating()
            animated = true
            button.setTitle("Start")
        }
        
        
    }
}
