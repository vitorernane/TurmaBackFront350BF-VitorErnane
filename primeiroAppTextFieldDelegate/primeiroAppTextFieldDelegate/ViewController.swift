//
//  ViewController.swift
//  primeiroAppTextFieldDelegate
//
//  Created by Vitor Ernane Guedes on 21/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        nameTextField.placeholder = "Digite seu nome:"
        nameTextField.delegate = self
    }

}

extension ViewController: UITextFieldDelegate {
    
    //quando o teclado subir será disparado o "textfielddidbeginediting"no debug
    
    // didBegin -> autocomplete
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor.blue.cgColor
        print("textFieldDidBeginEditing")
    }
    
    //Quando o teclado abaixa/some da tela
    //metodo utilizado para fazer validacoes de campo do TextField
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        // hastext valida se possivel texto ou não e substitui o .text == "
        if textField.text == "" {
            textField.layer.borderWidth = 2
            textField.layer.borderColor = UIColor.green.cgColor
        } else {
            textField.layer.borderWidth = 2
            textField.layer.borderColor = UIColor.red.cgColor
        }
        
        print("textFieldDidEndEditing")
    }
    
    //Quando clicamos no botão retorno o app desse o teclaod
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        textField.resignFirstResponder()
        return true
    
    }
    
    
}
