//
//  ViewController.swift
//  primeiroAppTextFieldDelegate
//
//  Created by Vitor Ernane Guedes on 21/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        nameTextField.placeholder = "Digite seu nome:"
        emailTextField.placeholder = "Digite seu email:"
        emailTextField.delegate = self
        nameTextField.delegate = self
    }

}

extension ViewController: UITextFieldDelegate {
    
    //quando o teclado subir será disparado o "textfielddidbeginediting"no debug
    
    // didBegin -> autocomplete
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
        
    // aqui coloca a borda quando o textfield tiver selecionado
        
        if textField == nameTextField {
            nameTextField.layer.borderColor = UIColor.orange.cgColor
            nameTextField.layer.borderWidth = 2
        } else {
            emailTextField.layer.borderColor = UIColor.darkGray.cgColor
            emailTextField.layer.borderWidth = 2
        }
    }
    
    //Quando o teclado abaixa/some da tela
    //metodo utilizado para fazer validacoes de campo do TextField
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    //aqui onde está zerado é porque quando vai trocar de um textfield para o outro ele encerra o ciclo de vida e retira a borda, ou seja dando enfase na borda onde está selecionado.
        
        textField.layer.borderWidth = 0
        print("textFieldDidEndEditing")
        
    //validacao para ver se possui conteúdo dentro do textField
        
        if textField.hasText == true {
            textField.layer.borderWidth = 2
            textField.layer.borderColor = UIColor.green.cgColor
        } else {
            textField.layer.borderWidth = 2
            textField.layer.borderColor = UIColor.red.cgColor
        }
        
    }
    
    //Quando clicamos no botão retorno o app desse o teclado
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        textField.resignFirstResponder()
        return true
    
    }
    
    
}

// ciclo de vida -> validação quando vai acionar o textfield (DidBeginEditing), validação para quando for preenchido e utilizado o botão return (ShouldReturn), campo onde vai ficar todas as validações para os textFields (didEndEditing)
