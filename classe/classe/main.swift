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
    var raca: String = "Siames"
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

var minhaBike: Bike = Bike()

print(minhaBike.marca)
minhaBike.marca = "Specialized"
print(minhaBike.marca)
print(minhaBike.rodas)


// OBJETO
// CARACTERISTICAS DE UM OBJETO -> ATRIBUTOS OU PROPRIEDADES
// AÇÕES = FUNÇÃO / METODO

// Para criar uma classe sempre começamos com a palavra reservada "class" e em seguida colocamos o seu nome que sempre deve começar com a primeira letra maiusculo

class Automovel {
    
    var cor: String = "Preto"
    var numeroDePortas: Int = 2
    var marca: String = "Honda"
    var eEletrico: Bool = false
    var quantidadeDePassageiros: Int = 5
    
    func ligarFarol() {
        print("O Farol está ligado")
    }
    
    func ligarOCarro() {
        print("O carro está ligado")
    }
    
}

// Dar vida ao objeto -> quando geramos a instancia -> ()
var meuCarro: Automovel = Automovel()


// Construtores
// Criamos um construtor com a palavra reservada init e com isso indicamos TODOS OS VALORES DAS VARIAVEIS OU CONSTANTES QUE NÃO SE INICIAM COM VALOR

class Pessoa {
    
    var nome: String
    var altura: Double
    var peso: Double
    var tamanhoCalcado: Int
    
    
    init(nome: String, altura: Double, peso: Double, tamanhoCalcado: Int) {
        self.nome = nome
        self.altura = altura
        self.peso = peso
        self.tamanhoCalcado = tamanhoCalcado
    }
}

var caio: Pessoa = Pessoa(nome: "Caio", altura: 1.84, peso: 84, tamanhoCalcado: 44)
var matheus: Pessoa = Pessoa(nome: "Matheus", altura: 1.65, peso: 69, tamanhoCalcado: 40)
//print(caio.nome)
//print(caio.altura)
//print(caio.peso)

//  Referencia uma das principais caracteristicas de uma classe

print(caio.nome)
print(matheus.nome)

caio.nome = "Caio Fabrini"
matheus.nome = "Matheus Souza"

print(caio.nome)
print(matheus.nome)

// caio é igual a matheus
caio = matheus

print(caio.nome)
print(matheus.nome)


caio.nome = "Alberto"

print(caio.nome)
print(matheus.nome)

matheus.nome = "Jorge"

print(caio.nome)
print(matheus.nome)
