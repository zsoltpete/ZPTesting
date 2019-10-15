//
//  UIViewController+Indicator.swift
//  ZPTesting_Example
//
//  Created by Zsolt Pete on 2019. 10. 15..
//  Copyright © 2019. CocoaPods. All rights reserved.
//

import UIKit

typealias SimpleCompletition = () -> Void

extension UIViewController {
    
    func showIndicator() {
        let activityIndicator = UIActivityIndicatorView(style: .gray)
        activityIndicator.center = self.view.center
        activityIndicator.startAnimating()
        self.view.addSubview(activityIndicator)
    }
    
    func hideIndicator() {
        for view in self.view.subviews where view is UIActivityIndicatorView {
            view.removeFromSuperview()
        }
    }
    
    func showAlert(with text: String, completition: SimpleCompletition? = nil) {
        let alert = UIAlertController(title: nil, message: text, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { [weak self]_ in
            self?.dismiss(animated: true, completion: nil)
            completition?()
        }
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    
}

extension UIViewController: UITextFieldDelegate {
    
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
}
