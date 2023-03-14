//
//  main.swift
//  heranca
//
//  Created by Vitor Ernane Guedes on 09/03/23.
//

import Foundation

print("Hello, World!")

/* DESAFIO PARA PASSAR PARA CASA

 • Criar uma classe pai na qual tenha 3 caracteristicas e 2 ações.
 • Criar 2 classes filhas distintas, porem ambas vão herdar da classe pai(super). Cada classe filha terá 3 caracteristicas especificas.
 • A classe pai terá construtor para setar seus valores.
 • Uma das classes filhas não deve conter construtor.
 • Uma das classes filhas deve conter contrutor indicando os valores de todas as suas propriedades. */

class Human {
    
    var skin: String
    var hair: String
    var age: Double
    
    init(skin: String, hair: String, age: Double) {
        self.skin = skin
        self.hair = hair
        self.age = age
    }
    
    func walk () {
        print("This human walking")
    }
    
    func drink () {
        print("this human drinking")
    }
    
}

class Adult: Human {
    
    var whiteHair: Bool = true
    var beard: Bool = true
    var accounts: Bool = true
    
}


class Young: Human {

    var piercing: Bool
    var tatto: Bool
    var sense: String

    init(piercing: Bool, tatto: Bool, sense: String, skin: String, hair: String, age: Double) {
        self.piercing = piercing
        self.tatto = tatto
        self.sense = sense
        super.init(skin: skin, hair: hair, age: age)
    }

}


var vitor: Young = Young(piercing: true, tatto: true, sense: "Rapaz ajuizado", skin: "white", hair: "Dark", age: 27.0)

print(vitor.sense)
