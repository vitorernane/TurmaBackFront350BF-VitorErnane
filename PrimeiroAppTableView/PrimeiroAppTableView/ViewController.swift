//
//  ViewController.swift
//  PrimeiroAppTableView
//
//  Created by Vitor Ernane Guedes on 18/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func configTableView() {
        
        //configurar os protocolos
        tableView.delegate = self
        tableView.dataSource = self
        //registrar a celula
        
    }

    
}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    
}
