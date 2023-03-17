//
//  main.swift
//  Desafios
//
//  Created by Vitor Ernane Guedes on 14/03/23.
//

import Foundation

//MARK: - CONSTRUTORES

// Crie uma classe chamada "Livro" que tenha as propriedades "titulo", "autor" e "preço". Em seguida, crie uma subclasse chamada "LivroDigital" que herde da classe "Livro" e tenha uma propriedade adicional chamada "formato". Crie dois construtores para a classe "LivroDigital". O primeiro deve aceitar o "formato" como parâmetro enquanto o segundo não deve aceitá-lo. Quando o "formato" não for fornecido, defina-o como "PDF". Defina então um método chamado "analisarPreco" que receba o "titulo" e o "preço" do livro como parâmetros e imprima "Livro caro" se o preço for maior que 25 ou "Livro barato", caso contrário.

class Livro {
    
    var Titulo: String = ""
    var Autor: String = ""
    var Preço: Int = 0
    
}

class LivroDigital: Livro {
    
    var formato: String
    
    init (formato: String) {
    self.formato = formato
    }
    
    func analisarPreco (_ Titulo: String,_ Preço: Int) -> String {
        if Preço > 25 {
            return "Livro caro"
        } else {
            return "Livro barato"
        }
        
//        print(analisarPreco("Código Limpo", 15))
    }
}




 //Crie uma classe chamada "FormaGeometrica" com as propriedades "largura" e "altura". Em seguida, crie uma subclasse chamada "Retangulo" que tenha um método "calcularArea" que calcula a área do retângulo (largura * altura). Certifique-se de que o construtor da subclasse chame o construtor da classe pai para definir a largura e a altura e imprima o resultado.
 
class FormaGeometrica {
    
    var largura: Double
    var altura: Double
     
    init(largura: Double, altura: Double) {
        self.largura = largura
        self.altura = altura
    }
    
}

class Retangulo: FormaGeometrica {
    
    
    func calcularArea (largura: Double, altura: Double) -> Double {
        var result: Double = 0
        result = largura * altura
        return result
    }
    
}
    
 //Crie uma classe chamada "ContaBancaria" com as propriedades "saldo" e "tipo". Em seguida, crie uma subclasse chamada "ContaCorrente" que tenha uma propriedade adicional chamada "limite" e um método "atualizarSaldo" que adiciona o limite ao saldo da conta. Certifique-se de que o construtor da subclasse chame o construtor da classe pai para definir o "saldo" e o "tipo". Você pode ainda criar um método "imprimirSaldo" que imprime o saldo atualizado da conta.




//MARK: - LÓGICA

/* Escreva uma função chamada "somaArray" que receba um array de números inteiros como parâmetro e retorne a soma de todos os elementos do array.
 Exemplo de entrada: [1, 2, 3, 4, 5]
 Saída esperada: 15 */
 
 /* Escreva uma função chamada "elefantesIncomodam" que receba um número inteiro positivo n como parâmetro e retorne a letra correspondente da música "Um Elefante Incomoda Muita Gente" até o n-ésimo elefante.
 Exemplo de entrada: 5
 Saída esperada:
 1 elefante incomoda muita gente
 2 elefantes incomodam, incomodam muito mais
 3 elefantes incomodam muita gente
 4 elefantes incomodam, incomodam, incomodam, incomodam muito mais
 5 elefantes incomodam muita gente */

 



/* Escreva uma função chamada "solucaoEquacaoSegundoGrau" que receba três números reais a, b e c como parâmetros e retorne as soluções da equação ax² + bx + c = 0, ou uma mensagem indicando que não há soluções reais.
 Exemplo de entrada: a = 2, b = 5, c = 3
 Saída esperada: (-1.5, -1)
 Dica: A solução da equação do segundo grau pode ser encontrada usando a fórmula de Bhaskara, que é:
 x = (-b ± sqrt(b² - 4ac)) / 2a
 Se o discriminante b² - 4ac for negativo, a equação não tem soluções reais. Se for zero, a equação tem uma solução real. Se for positivo, a equação tem duas soluções reais distintas. É importante lembrar que em Swift, a função sqrt() pode ser usada para calcular a raiz quadrada. */




 /* Escreva uma função chamada "fibonacci" que receba um número inteiro positivo n como parâmetro e retorne o n-ésimo número da sequência de Fibonacci. A sequência de Fibonacci começa com os números 0 e 1, e a partir do terceiro número cada número é a soma dos dois números anteriores.

  Exemplo de entrada: 7
  Saída esperada: 13 (pois o sétimo número da sequência de Fibonacci é 13) */





/* Escreva uma função chamada "somaDosPrimos" que receba um número inteiro como
parâmetro e retorne a soma de todos os números primos menores ou iguais a esse
número.
  
 Exemplo de entrada: 10
 Saída esperada: 17 (pois 2 + 3 + 5 + 7 = 17) */


//MARK: - POLIMORFISMO, ENCAPSULAMENTO

// 1) Exercicio Vendedor:

/* Um vendedor de loja possui nome, idade, cpf, saldo em conta e ele vende em sua loja ternos e vestido defina um método(quantidadeDePecas: Int, tipoDePeça: String).

- Cada terno custa 400 reais, caso o cliente compre 3 ou mais ternos ele recebe 50 por cento de desconto em cada
 
 - cada vestido custa 900 reais, caso o cliente compre 5 ou mais vestidos ele ganha um véu de noiva de brinde
 
 - cada boné custa 50 reais, e para cada 2 bonés vendidos, o terceiro é grátis, logo não haverá lucro


----------------------------- encapsule todos os métodos necessarios ---------------------- */

class Vendedor {
    
    var name: String
    var age: Int
    var cpf: String
    var saldoEmConta: Double
    
    init(name: String, age: Int, cpf: String, saldoEmConta: Double) {
        self.name = name
        self.age = age
        self.cpf = cpf
        self.saldoEmConta = saldoEmConta
    }
    
    func vender (quantidadeDePecas: Int, tipoDePeca: String) {
        if tipoDePeca == "Terno" {
            venderTerno(quantidadeDeTernos: quantidadeDePecas)
        } else if tipoDePeca == "Vestido" {
            venderVestido(quantidadeDeVestidos: quantidadeDePecas)
        } else {
            print("não temos essa opção")
        }
            
        
    }
    
    private func venderTerno (quantidadeDeTernos: Int) {
        var desconto: Double = 0
        if quantidadeDeTernos >= 3 {
            desconto = Double(50 * quantidadeDeTernos)
        }
        saldoEmConta = saldoEmConta + Double(quantidadeDeTernos * 400) - desconto
    }
    
    private func venderVestido(quantidadeDeVestidos:Int) {
        if quantidadeDeVestidos == 5 {
            print("Parabéns você ganhou um véu de brinde")
        }
        saldoEmConta = saldoEmConta + Double(quantidadeDeVestidos * 900)
    }
    
    
}

var vendedorVitor: Vendedor = Vendedor(name: "Vitor", age: 27, cpf: "CPF Válido", saldoEmConta: 10000)
vendedorVitor.vender(quantidadeDePecas: 18, tipoDePeca: "Terno")
print(vendedorVitor.saldoEmConta)


// 2) Exercicio Funcionários:

/*
 
 - Defina uma classe funcionarios com nome, salario e cpf.
 
 - Depois defina as classes programador que tem plataforma de trabalho (ex: android, web e iOS) e uma classe designer que tem ferramenta preferida (ex: Photoshop, sketch, Gimp).
 
-  Ambos tem um bonus anual baseado no salário, programador recebe 20% e designer recebe 15%, faça um método que calcule o bonus anual e mostre o valor do bonus na tela.

-  Use polimorfismo para resolver este problema.  */

class Funcionario {
    var nome: String
    var salario: Double
    var CPF: String
    
    init(nome: String, salario: Double, CPF: String) {
        self.nome = nome
        self.salario = salario
        self.CPF = CPF
        
    }
    
    func bonusAnual () {
        print("")
    }
    
}

class Programador: Funcionario {
    
    var plataformaDeTrabalho: String
    init (plataformadeTrabalho: String, nome: String, salario: Double, CPF: String) {
        self.plataformaDeTrabalho = plataformadeTrabalho
        super.init(nome: nome, salario: salario, CPF: CPF)
    }
    override func bonusAnual() {
        print("Seu bônus é de 20%, sendo assim o valor do seu bonus é de: \(salario * 12 * 0.2)")
    }
}

class Designer: Funcionario {
    
    var plataformaDeTrabalho: String
    init (plataformadeTrabalho: String, nome: String, salario: Double, CPF: String) {
        self.plataformaDeTrabalho = plataformadeTrabalho
        super.init(nome: nome, salario: salario, CPF: CPF)
    }
    override func bonusAnual() {
        print("Seu bônus é de 15%, sendo assim o valor do seu bonus é de: \(salario * 12 * 0.15)")
    }
}


var iOSDeveloper: Programador = Programador(plataformadeTrabalho: "Xcode", nome: "Vitor", salario: 4500, CPF: "CPF Válido")

iOSDeveloper.bonusAnual()


var felipeDesigner: Designer = Designer(plataformadeTrabalho: "Figma", nome: "Felipe", salario: 4500, CPF: "CPF Válido")


// 3) Exercicio Veículo:

/*
 
 - Defina uma classe veículo com cor, preço e quantidade de passageiros.
 
 
- depois defina as classes Carro que tem tamanho das rodas e Avião que tem piloto e companhia aérea.
 
- Queremos descobrir a quantidade de combustível que cada um dos veículos gasta por viagem, defina um método que recebe como parâmetro a distancia em KM e calcule a quantidade de combustivel.
 
- FORMULA Carro: tamanho das rodas * quantidade de passageiros * distancia.
 
          Aviao: quantidade de passageiros * distancia */


class Veiculo {
    var cor: String
    var preco: Int
    var quantidadeDePasseiros: Int
    
    init(cor: String, preco: Int, quantidadeDePasseiros: Int) {
        self.cor = cor
        self.preco = preco
        self.quantidadeDePasseiros = quantidadeDePasseiros
    }
    
    
}
