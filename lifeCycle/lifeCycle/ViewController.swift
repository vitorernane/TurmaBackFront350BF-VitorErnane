//
//  ViewController.swift
//  lifeCycle
//
//  Created by Vitor Ernane Guedes on 09/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print(#function)
    }
    override func viewWillAppear(_ animated: Bool) {
        print(#function)
    }

    override func viewDidAppear(_ animated: Bool) {
        print(#function)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print(#function)
    }
    
}

