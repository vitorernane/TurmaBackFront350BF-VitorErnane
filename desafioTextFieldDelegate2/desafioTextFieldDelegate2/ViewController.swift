//
//  ViewController.swift
//  desafioTextFieldDelegate2
//
//  Created by Vitor Ernane Guedes on 23/03/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var adressTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var passwordAgainTextField: UITextField!
    
    
    @IBOutlet weak var registerButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.delegate = self
        adressTextField.delegate = self
        passwordTextField.delegate = self
        passwordAgainTextField.delegate = self
        
        //configuração das cores do Placeholder
        
        let placeHolderNameTextField = NSAttributedString (string: "Nome", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        nameTextField.attributedPlaceholder = placeHolderNameTextField
        
        
        let placeHolderAdressTextField = NSAttributedString (string: "Endereço", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        adressTextField.attributedPlaceholder = placeHolderAdressTextField
        
        
        let placeHolderPasswordTextField = NSAttributedString (string: "Senha", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        passwordTextField.attributedPlaceholder = placeHolderPasswordTextField
        
        
        let placeHolderPasswordAgainTextField = NSAttributedString (string: "Digite sua senha novamente", attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray])
        
        passwordAgainTextField.attributedPlaceholder = placeHolderPasswordAgainTextField
        
        //configuração das cores e do botão cadastrar
        
        registerButton.layer.backgroundColor = UIColor(red: 0.906, green: 0, blue: 0.494, alpha: 1).cgColor
        registerButton.layer.cornerRadius = 10
        
        
    }

    @IBAction func registerActionButton(_ sender: Any) {
        
        registerButton.isEnabled = true
        
        print("Cadastro realizado com sucesso!")
        
    }
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        print("textFieldDidBeginEditing")
        
        textField.layer.borderColor = UIColor.systemCyan.cgColor
        textField.layer.borderWidth = 5
        textField.layer.cornerRadius = 5
        
    }
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        textField.layer.borderWidth = 0
        
        // lógica para inserir a borda colorida, indicando se há ou não dados dentro do textfield.
        
       if textField.hasText == true {
            textField.layer.borderWidth = 3
            textField.layer.borderColor = UIColor.white.cgColor
       } else {
           textField.layer.borderColor = UIColor.red.cgColor
           textField.layer.borderWidth = 3
       }
        
        //lógica para validar se o texto digitado no campo senha é igual ao campo digite sua senha novamente, caso for igual, o botão é habilitado.
        
        if passwordTextField.text == passwordAgainTextField.text {
            registerButton.isEnabled = true
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        print("textFieldShouldReturn")
        
        textField.resignFirstResponder()
        return true
        
    }
}
