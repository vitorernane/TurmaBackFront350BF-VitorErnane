//
//  ViewController.swift
//  desafioTextFieldDelegate1
//
//  Created by Vitor Ernane Guedes on 22/03/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var adressTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        registerButton.isEnabled = false
        
        nameTextField.placeholder = "Nome"
        let placeHolderText = NSAttributedString (string: "Nome", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        nameTextField.attributedPlaceholder = placeHolderText
        nameTextField.layer.borderColor = UIColor.white.cgColor
        nameTextField.layer.borderWidth = 2
        nameTextField.layer.cornerRadius = 5
        
        adressTextField.placeholder = "Endereço"
        adressTextField.layer.borderColor = UIColor.white.cgColor
        adressTextField.layer.borderWidth = 2
        adressTextField.layer.cornerRadius = 5

        passwordTextField.placeholder = "Senha"
        passwordTextField.layer.borderColor = UIColor.white.cgColor
        passwordTextField.layer.borderWidth = 2
        passwordTextField.layer.cornerRadius = 5
        
        
        registerButton.layer.backgroundColor = UIColor(red: 0.906, green: 0, blue: 0.494, alpha: 1).cgColor
        view.layer.cornerRadius = 10
        
        
        nameTextField.delegate = self
        adressTextField.delegate = self
        passwordTextField.delegate = self
        
    }

    @IBAction func registerActionButton(_ sender: Any) {
        print("cadastro realizado com sucesso")
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
        
        textField.layer.borderColor = UIColor.systemCyan.cgColor
        textField.layer.borderWidth = 5
        
        
        //Eu estava usando esses códigos para fazer a borda quando estivesse digitando no campo, mas depois eu olhei e vi que se eu configurasse apenas o layer do text field ele iria valer para todos por conta do protocolo.
        
//        if textField == nameTextField {
//            nameTextField.layer.borderColor = UIColor.systemPink.cgColor
//            nameTextField.layer.borderWidth = 5
//        }
//
//
//        if textField == adressTextField {
//            adressTextField.layer.borderColor = UIColor.systemPink.cgColor
//            adressTextField.layer.borderWidth = 5
//        }
//
//        if textField == passwordTextField {
//            passwordTextField.layer.borderColor = UIColor.systemPink.cgColor
//            passwordTextField.layer.borderWidth = 5
//        }
//
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        print("textFieldShouldReturn")
        
        textField.resignFirstResponder()
        return true
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
        
        textField.layer.borderWidth = 0
        
        if textField.hasText == true {
            textField.layer.borderWidth = 3
            textField.layer.borderColor = UIColor.white.cgColor
            
        } else {
            textField.layer.borderWidth = 2
            textField.layer.borderColor = UIColor.red.cgColor
        }
        
        // lógica para habilitar o botão quando todos os dados forem habilitados
        
        if nameTextField.text?.isEmpty == false && adressTextField.text?.isEmpty == false && passwordTextField.text?.isEmpty == false{
            registerButton.isEnabled = true
        } else {
            registerButton.isEnabled = false
        }
        
    }
    
}
