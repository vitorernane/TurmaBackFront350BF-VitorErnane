//
//  ViewController.swift
//  navegacao
//
//  Created by Vitor Ernane Guedes on 10/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedShowTela02Button(_ sender: UIButton) {
        
        let vc: Tela02ViewController? = UIStoryboard(name: "tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
        vc?.modalPresentationStyle = .automatic
        present(vc ?? UIViewController(), animated: true)
        
    }
    
    @IBAction func tappedShowTelaButton(_ sender: UIButton) {
        let vc: Tela03ViewController? = UIStoryboard(name: "Tela03ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela03ViewController") as? Tela03ViewController
        present(vc ?? UIViewController(), animated: true)
    }
}

