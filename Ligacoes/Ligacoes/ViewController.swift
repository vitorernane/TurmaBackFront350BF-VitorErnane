//
//  ViewController.swift
//  Ligacoes
//
//  Created by Vitor Ernane Guedes on 16/03/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var loginButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Vitor Ernane -t"
        
    }

    @IBAction func tappedLoginButton(_ sender: UIButton) {
        
        print("cliquei no botão")
        
    }
    
}

