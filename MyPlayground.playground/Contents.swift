import SwiftUI
        

 0
    var ladoY : Int = 0
    var qtdLados : Int = 4
    
    func calcularArea() -> Int{
        //        let area = (ladoX * ladoY)
        //        return area
        return (ladoX * ladoY)
    }
    
    func calcularPerimetro() -> Int{
        return (2 * ladoY) + (2 * ladoX)
    }
}

var ret1 : Retangulo = Retangulo()
ret1.ladoX = 4
ret1.ladoY = 5

let areaRetangulo = ret1.calcularArea()

let perimetroRetangulo = ret1.calcularPerimetro()

print("A área do retângulo de lados \(ret1.ladoX), \(ret1.ladoY) é igual a \(areaRetangulo)")

print("O perímetro do retângulo de lados \(ret1.ladoX), \(ret1.ladoY) é igual a \(perimetroRetangulo)")







class Triangulo{
    
    var base : Int = 0
    var altura : Int = 0
    var ladoX : Int = 0
    var ladoY : Int = 0
    var qtdLados = 3
    
    func calcularArea() -> Int {
        return (base * altura / 2)
    }
    
    func calcularPerimetro() -> Int{
        return (ladoY + ladoX + base)
    }
}

var tri1 : Triangulo = Triangulo()
tri1.base = 2
tri1.altura = 5
tri1.ladoX = 6
tri1.ladoY = 9


let areaTriangulo : Int = tri1.calcularArea()
let perimetroTriangulo : Int = tri1.calcularPerimetro()

print("A área do triângulo de lados \(tri1.base), \(tri1.ladoX), \(tri1.ladoY) é igual a \( areaTriangulo ) ")

print("O perímetro do triângulo de lados \(tri1.base), \(tri1.ladoX), \(tri1.ladoY) é igual a \( perimetroTriangulo ) ")


