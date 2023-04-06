//
//  UIViewController+Extensions.swift
//  correcoesDesafioValidacoes
//
//  Created by Vitor Ernane Guedes on 04/04/23.
//

import Foundation
import UIKit

extension UIViewController {

public func hideKeyboardWhenTappedAround() {
    
    let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
    tap.cancelsTouchesInView = false
    view.addGestureRecognizer(tap)
    
    }

@objc private func dismissKeyboard() {
    view?.endEditing(true)
    }

}

