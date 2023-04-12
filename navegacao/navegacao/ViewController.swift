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
        present(vc ?? UIViewController(), animated: true)
        
    }
    
    @IBAction func tappedShowTelaButton(_ sender: UIButton) {
        performSegue(withIdentifier: "showTela03", sender: nil)
    }
}

