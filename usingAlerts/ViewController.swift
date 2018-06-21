//
//  ViewController.swift
//  usingAlerts
//
//  Created by Anes Mehai  on 6/21/18.
//  Copyright © 2018 Anes Mehai . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var multiBttn: UIButton!
    @IBOutlet weak var alertInputBttn: UIButton!
    
    @IBOutlet weak var userOutput: UILabel!
    
    @IBAction func doAlertInput(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Email Address", message: "Please enter your email address below:", preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addTextField(configurationHandler: {(emailField) in emailField.text = ""
            emailField.placeholder = "Email:"
            emailField.isSecureTextEntry = true
        })
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: {[weak alertController](_) in
            let emailField = alertController?.textFields![0]
            
            let email = emailField?.text
            self.userOutput.text = "Entered:\(email!)"
            
        }))
        
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func doAlert(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Alert Me Button Selected", message: "I need your attention NOW!!", preferredStyle: UIAlertControllerStyle.alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
    
        present(alertController, animated: true, completion: nil)
    } //end of doAlert function
    
    
    @IBAction func multiButtonAlert(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Alert with buttons selected", message: "Options are good for people!", preferredStyle: UIAlertControllerStyle.alert)
        
        let nowAction = UIAlertAction(title: "Do something Now", style: UIAlertActionStyle.default, handler: {alert in self.userOutput.text="Pressed Now"})
        
        let laterAction = UIAlertAction(title: "Do Something Later", style: UIAlertActionStyle.default, handler: {alert in self.userOutput.text="Pressed Later"})
        
        let cancelAction = UIAlertAction(title: "Never Do It", style: UIAlertActionStyle.default, handler: {alert in self.userOutput.text="Pressed Never"})
        
        alertController.addAction(nowAction)
        alertController.addAction(laterAction)
        alertController.addAction(cancelAction)
        present(alertController, animated: true, completion: nil)
    } //end of multiButtonAlert
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

