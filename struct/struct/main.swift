//
//  main.swift
//  struct
//
//  Created by Vitor Ernane Guedes on 14/03/23.
//

import Foundation

// MARK: - Struct

// Uma struct é muito similar a uma classe, porem uma struct trabalha com VALUE TYPE já a class com REFERENCE TYPE
// Uma struct não trabalha com herança, apenas pode estar em conformidade com protocols
// Na struct não necessita de criar o construtor na mão, ele cria automatico

struct Pessoa {
    var nome: String
    var idade: Int
}


var caio: Pessoa = Pessoa(nome: "Caio", idade: 21)
var matheus: Pessoa = Pessoa(nome: "Matheus", idade: 30)

caio = matheus

caio.nome = "Alfredo"

print(caio.nome)
print(matheus.nome)


// MARK: -  EXERCICIOS (ENCAPSULAMENTO)

// 1) Exercicio Vendedor:

/* Um vendedor de loja possui nome, idade, cpf, saldo em conta e ele vende em sua loja ternos, vestidos e bonés, defina um método(quantidadeDePecas: Int, tipoDePeça: String).

- Cada terno custa 400 reais, caso o cliente compre 3 ou mais ternos ele recebe 50 por cento de desconto em cada
 
 - cada vestido custa 900 reais, caso o cliente compre 5 ou mais vestidos ele ganha um véu de noiva de brinde
 
 - cada boné custa 50 reais, e para cada 2 bonés vendidos, o terceiro é grátis, logo não haverá lucro


----------------------------- encapsule todos os métodos necessarios ---------------------- */

class Vendedor {
    var nome: String = ""
    var idade: Int?
    private var  cpf: Double?
    private var saldo: Double?
    
    init(nome: String, idade: Int? = nil, cpf: Double? = nil, saldo: Double? = nil) {
        self.nome = nome
        self.idade = idade
        self.cpf = cpf
        self.saldo = saldo
    }
    
    func vender (quantidadeDePecas: Int, tipoDePeca: String) {
        switch tipoDePeca {
        case "terno":
            print(calcTerno(with: quantidadeDePecas))
        case "vestido":
            print(calcVestido(with: quantidadeDePecas))
            
        default:
            print("Peça inválida")
        }
        
        func calcTerno (with quantidade: Int ) -> String {
            let valor: Int = 400
            var total: Int = valor * quantidade
            
            if quantidade > 2 {
                total = 50 * quantidade
                return "total a pagar nos vestidos com descontos é \(total), e por ser uma boa cliente você ganhou um véu de noiva"
            } else {
                total = valor * quantidade
                return "total a pagar no vestido"
            }
        }
        
        func calcVestido (with quantidade: Int ) -> String {
            let valor: Int = 900
            var total: Int = valor * quantidade
            
            if quantidade > 4 {
                total = 50 * quantidade
                return "total a pagar nos ternos com descontos é \(total)"
            } else {
                total = valor * quantidade
                return "total a pagar no terno"
            }
        }
    }
    
    
    
    
    
    
    // 2) Exercicio Funcionários:
    
    /*
     
     - Defina uma classe funcionarios com nome, salario e cpf.
     
     - Depois defina as classes programador que tem plataforma de trabalho (ex: android, web e iOS) e uma classe designer que tem ferramenta preferida (ex: Photoshop, sketch, Gimp).
     
     -  Ambos tem um bonus anual baseado no salário, programador recebe 20% e designer recebe 15%, faça um método que calcule o bonus anual e mostre o valor do bonus na tela.
     
     -  Use polimorfismo para resolver este problema.  */
    
    
    
    
    
    
    
    
    
    
    // 3) Exercicio Veículo:
    
    /*
     
     - Defina uma classe veículo com cor, preço e quantidade de passageiros.
     
     
     - depois defina as classes Carro que tem tamanho das rodas e Avião que tem piloto e companhia aérea.
     
     - Queremos descobrir a quantidade de combustível que cada um dos veículos gasta por viagem, defina um método que recebe como parâmetro a distancia em KM e calcule a quantidade de combustivel.
     
     - FORMULA Carro: tamanho das rodas * quantidade de passageiros * distancia.
     
     Aviao: quantidade de passageiros * distancia */
    
}
