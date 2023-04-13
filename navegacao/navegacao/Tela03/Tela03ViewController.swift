//
//  Tela03ViewController.swift
//  navegacao
//
//  Created by Vitor Ernane Guedes on 10/04/23.
//

import UIKit

class Tela03ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //Método para tirar o "back" do layout
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: false)
    }

    @IBAction func tappedCloseButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func tappedTest(_ sender: UIButton) {
        
        let vc: Tela05ViewController? = UIStoryboard(name: "Tela05ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela05ViewController") as? Tela05ViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
    
        
}
