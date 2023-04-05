//
//  ViewController.swift
//  correcoesDesafioValidacoes
//
//  Created by Vitor Ernane Guedes on 04/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var adressTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    @IBOutlet weak var passwordAgainTextField: UITextField!
    
    @IBOutlet weak var registterButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTextField()
        configRegisterButton()
        validateTextField()
        
    }

    func configTextField() {
        
        nameTextField.delegate = self
        let placeHolderNameTextField = NSAttributedString (string: "Digite seu nome:", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        nameTextField.attributedPlaceholder = placeHolderNameTextField
        
   /* ------------------------------------------------------------------------------------ */
        adressTextField.delegate = self
        let placeHolderAdressTextField = NSAttributedString (string: "Digite seu endereço:", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        adressTextField.attributedPlaceholder = placeHolderAdressTextField
        
   /* ------------------------------------------------------------------------------------ */
        passTextField.delegate = self
        let placeHolderPassTextField = NSAttributedString (string: "Digite sua senha:", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        passTextField.attributedPlaceholder = placeHolderPassTextField
        passTextField.isSecureTextEntry = true
        
   /* ------------------------------------------------------------------------------------ */
        passwordAgainTextField.delegate = self
        let placeHolderPasswordAgainTextField = NSAttributedString (string: "Confirme sua senha:", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        passwordAgainTextField.attributedPlaceholder = placeHolderPasswordAgainTextField
        passwordAgainTextField.isSecureTextEntry = true
        
        
    }
    
    func configRegisterButton() {
        
        registterButton.layer.backgroundColor = UIColor(red: 0.906, green: 0, blue: 0.494, alpha: 1).cgColor
        view.layer.cornerRadius = 10
            
        registterButton.layer.cornerRadius = 8
        
    }
    
    func validateTextField() {
        
        if nameTextField.hasText && adressTextField.hasText && passTextField.hasText && passwordAgainTextField.hasText {
            
            if passTextField.text == passwordAgainTextField.text {
                registterButton.isEnabled = true
                
            } else {
                passTextField.layer.borderColor = UIColor.red.cgColor
                passwordAgainTextField.layer.borderColor = UIColor.red.cgColor
                registterButton.isEnabled = false
            }
            
        } else {
            registterButton.isEnabled = false
        }
    }
    
    
    @IBAction func tappedRegisterButton(_ sender: Any) {
        
        print("Cadastro realizado com sucesso! :)")
        
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        textField.layer.borderColor = UIColor.systemTeal.cgColor
        textField.layer.borderWidth = 3
        textField.layer.cornerRadius = 5
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        if textField.hasText {
            textField.layer.borderColor = UIColor.white.cgColor
        } else {
            textField.layer.borderColor = UIColor.red.cgColor
        }
        
        validateTextField()
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
