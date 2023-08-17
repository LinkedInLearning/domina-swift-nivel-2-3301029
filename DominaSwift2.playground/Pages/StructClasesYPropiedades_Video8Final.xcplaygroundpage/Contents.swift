//: ### Struct, Clases y Propiedades
//: 8) Modificar propiedades de structs en métodos de instancia.

struct Punto {
    var x = 0
    var y = 0
    
    mutating func pasoEnX() {
        self.x = x + 1
    }
    
    mutating func pasoEnY() {
        self.y = y + 1
    }
}

var puntoC = Punto()

puntoC.pasoEnX()

print(puntoC)

//let puntoD = Punto()
//
//puntoD.pasoEnX()
