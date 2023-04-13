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
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
    
    //MARK: - Adicionando uma navegação através do navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    
    @IBAction func tappedShowTela04Button(_ sender: UIButton) {
        
        let vc: Tela04ViewController? = UIStoryboard(name: "Tela04ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela04ViewController") as? Tela04ViewController
        vc?.modalPresentationStyle = .automatic
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
        
    }
    
}

