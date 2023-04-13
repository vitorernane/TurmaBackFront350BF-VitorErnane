//
//  Tela04ViewController.swift
//  navegacao
//
//  Created by Vitor Ernane Guedes on 12/04/23.
//

import UIKit

class Tela04ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "tela 04"
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedHomeButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
