//
//  main.swift
//  classe
//
//  Created by Vitor Ernane Guedes on 07/03/23.
//

import Foundation


class Pet {
    
    var cor: String = "Preto"
    var especie: String = "Felino"
    var raca: Int = 2
    var bigode: Bool = true
    var escala: Bool = true
    
    func latidoAlto() {
        print("Ele late alto")
    }
    
    func correAtrasDoRabo() {
        print("Ele corre atrás do rabo")
    }
    
    
}


class House {
    
    var cor: String = "Branca"
    var janelas: Int = 2
    var porta: Int = 2
    var banheiros: Int = 4
    var Quartos: Int = 3

    
    func abrirAPorta() {
        print("A porta está aberta")
    }
    
    func fecharJanelas() {
        print("Fechar as janelas da casa")
    }
    
}


class Bike {
    
    var marca: String = "Kona"
    var tipo: String = "Mountain Bike"
    var rodas: Int = 2
    var grupoTransmissao: String = "Shimano Deore"
    var eEletrica: Bool = false
    
    func recarregarBateria() {
        print("Recarregar a bateria da e-bike")
    }
    
    func desempenarRodas() {
        print("As rodas precisam ser desenpenadas")
    }
    
}
