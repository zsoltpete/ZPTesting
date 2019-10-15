//
//  RegViewController.swift
//  ZPTesting_Example
//
//  Created by Zsolt Pete on 2019. 10. 14..
//  Copyright © 2019. CocoaPods. All rights reserved.
//

import UIKit

class RegViewController: UIViewController {
    
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addAccessibilityIds()
        self.initRegButton()
        self.initDelegates()
        
    }
    
    private func initRegButton() {
        self.registerButton.addTarget(self, action: #selector(regButtonTapped), for: .touchUpInside)
    }
    
    @objc
    private func regButtonTapped() {
        self.showIndicator()
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) { [weak self] in
            self?.hideIndicator()
            self?.showAlert(with: "Reg success", completition: { [weak self] in
                self?.navigationController?.popViewController(animated: true)
            })
        }
    }
    
    private func initDelegates() {
        self.emailTextField.delegate = self
        self.passwordTextField.delegate = self
        self.confirmPasswordTextField.delegate = self
    }
    
    private func addAccessibilityIds() {
        self.registerButton.accessibilityIdentifier = AccessibilityIds.Registration.RegisterButton
        self.emailTextField.accessibilityIdentifier = AccessibilityIds.Registration.EmailInputField
        self.passwordTextField.accessibilityIdentifier = AccessibilityIds.Registration.PasswordInputField
        self.confirmPasswordTextField.accessibilityIdentifier = AccessibilityIds.Registration.ConfiemPasswordInputField
    }

}
