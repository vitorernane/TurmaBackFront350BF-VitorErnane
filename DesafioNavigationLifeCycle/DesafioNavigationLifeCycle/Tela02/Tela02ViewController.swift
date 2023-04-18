//
//  Tela02ViewController.swift
//  DesafioNavigationLifeCycle
//
//  Created by Vitor Ernane Guedes on 18/04/23.
//

import UIKit

class Tela02ViewController: UIViewController {
    
    let name: String
    
    init?(coder: NSCoder, name:String){
        self.name = name
        super .init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
    }
    
    @IBAction func tappedBackButton(_ sender: UIButton) {
        
        navigationController?.popViewController(animated: true)
    }
    

}
