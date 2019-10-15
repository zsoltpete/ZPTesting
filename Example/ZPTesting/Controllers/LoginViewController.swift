//
//  LoginViewController.swift
//  ZPTesting_Example
//
//  Created by Zsolt Pete on 2019. 10. 14..
//  Copyright © 2019. CocoaPods. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addAccessibilityIds()
    }
    
    private func addAccessibilityIds() {
        self.registerButton.accessibilityIdentifier = AccessibilityIds.Login.RegisterButton
        self.emailTextField.accessibilityIdentifier = AccessibilityIds.Login.EmailInputField
        self.passwordTextField.accessibilityIdentifier = AccessibilityIds.Login.PasswordInputField
        self.loginButton.accessibilityIdentifier = AccessibilityIds.Login.LoginButton
    }

}
