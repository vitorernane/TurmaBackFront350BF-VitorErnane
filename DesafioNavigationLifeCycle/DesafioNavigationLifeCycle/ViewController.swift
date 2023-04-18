//
//  ViewController.swift
//  DesafioNavigationLifeCycle
//
//  Created by Vitor Ernane Guedes on 18/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }

    @IBAction func tappedShowTela02Button(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(identifier: "Tela02ViewController", creator:{ coder -> Tela02ViewController? in
            return Tela02ViewController(coder: coder, name: self.nameTextField.text ?? "")
        })
        
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

