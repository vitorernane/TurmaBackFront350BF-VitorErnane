//
//  Tela05ViewController.swift
//  navegacao
//
//  Created by Vitor Ernane Guedes on 12/04/23.
//

import UIKit

class Tela05ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tela 05"

        // Do any additional setup after loading the view.
    }

    
    @IBAction func tappedShowRoot(_ sender: UIButton) {
        
        navigationController?.popToRootViewController(animated: true)
        
    }
    
}
