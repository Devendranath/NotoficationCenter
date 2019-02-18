//
//  SettingsViewController.swift
//  NotoficationCenter
//
//  Created by apple on 18/02/19.
//  Copyright © 2019 iOSProofs. All rights reserved.
//

import UIKit

let colorChangeNotification = "ColorChangeNotification"

class SettingsViewController: UIViewController {

    @IBAction func changeColor(_ sender: Any) {
        
        self.view.backgroundColor = UIColor.red
        
        let info = ["color": UIColor.red]
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: colorChangeNotification), object: info)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Settings VC"
        // Do any additional setup after loading the view.
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
