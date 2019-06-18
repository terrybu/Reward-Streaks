//
//  FirstViewController.swift
//  Reward Streaks
//
//  Created by Terry Bu on 4/23/19.
//  Copyright © 2019 Terry Bu. All rights reserved.
//

import UIKit
import GoogleSignIn

class FirstViewController: UIViewController, GIDSignInUIDelegate{
    
    @IBOutlet weak var signInButton: GIDSignInButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        print("sup terry")
        
        GIDSignIn.sharedInstance().uiDelegate = self
        
        // Uncomment to automatically sign in the user.
        //GIDSignIn.sharedInstance().signInSilently()
        
        // TODO(developer) Configure the sign-in button look/feel
        // ...
    
    }

    @IBAction func didTapSignOut(_ sender: AnyObject) {
        GIDSignIn.sharedInstance().signOut()
    }

}

