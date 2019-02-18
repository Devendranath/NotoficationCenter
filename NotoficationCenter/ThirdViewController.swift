//
//  ThirdViewController.swift
//  NotoficationCenter
//
//  Created by apple on 18/02/19.
//  Copyright © 2019 iOSProofs. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       self.title = "TVC"
        NotificationCenter.default.addObserver(self, selector: #selector(themeChanged), name: NSNotification.Name(rawValue: colorChangeNotification), object: nil)
        
    }
    
    @objc func themeChanged(notification: Notification) {
        
        print(notification.object)
        let info = notification.object as? [String: UIColor]
        self.view.backgroundColor = info?["color"] as! UIColor
        print("Third Color Changed")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
