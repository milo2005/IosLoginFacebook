//
//  ViewController.swift
//  FacebookGoogle
//
//  Created by Aplimovil on 10/20/16.
//  Copyright © 2016 Aplimovil. All rights reserved.
//

import UIKit
import FBSDKCoreKit

import FBSDKLoginKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onLoginFacebook(_ sender: AnyObject) {
        let loginFB = FBSDKLoginManager()
        loginFB.logIn(withReadPermissions: [], from: self) { (result:FBSDKLoginManagerLoginResult?, err:Error?) in
            
            if err != nil {
                print("Process error")
            } else if (result?.isCancelled)! {
                print("Cancelled")
            } else {
                print("Logged in");
            }
            
        }
        
        
    }
   
    @IBAction func onLoginGoogle(_ sender: AnyObject) {
        
    }
}

