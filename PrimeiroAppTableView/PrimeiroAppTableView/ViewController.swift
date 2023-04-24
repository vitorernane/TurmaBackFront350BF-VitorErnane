//
//  ViewController.swift
//  PrimeiroAppTableView
//
//  Created by Vitor Ernane Guedes on 18/04/23.
//

import UIKit


// 1 - Criar a table view e fazer sua ligação
// 2 - configurar table view (delegate e dataSource)
// 3 - Criar celula customizavel
// 4 -

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView() {
        
        //configurar os protocolos
        tableView.delegate = self
        tableView.dataSource = self
        //registrar a celula
        
    }

    
}

// é responsavel pelas ações e interações com o usuario
extension ViewController: UITableViewDelegate {
    
}


// UITableViewDataSource configura os métodos e é responsavel pela parte de dados
extension ViewController: UITableViewDataSource {
    
    // Quantidade de itens por seção
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
