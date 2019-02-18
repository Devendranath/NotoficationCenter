//
//  ViewController.swift
//  NotoficationCenter
//
//  Created by apple on 18/02/19.
//  Copyright © 2019 iOSProofs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       self.title = "FVC"
        NotificationCenter.default.addObserver(self, selector: #selector(themeChanged), name: NSNotification.Name(rawValue: colorChangeNotification), object: nil)
        
        NotificationCenter.default.removeObserver(self, name: Notification.Name(rawValue: colorChangeNotification), object: nil)
    }
    
    @objc func themeChanged(notification: Notification) {
        print(notification.object)
        let info = notification.object as? [String: UIColor]
        self.view.backgroundColor = info?["color"] as! UIColor
    }
    
    
}

