//: ### Struct, Clases y Propiedades
//:2) Diferencia entre los operadores "===" y "=="

class Persona: Equatable {
    static func == (lhs: Persona, rhs: Persona) -> Bool {
        return lhs.nombre == rhs.nombre && lhs.edad == rhs.edad
    }
    

    let nombre: String
    var edad: Int
    
    init(nombre: String, edad: Int) {
        self.nombre = nombre
        self.edad = edad
    }
    
}

let persona1 = Persona(nombre: "Sara", edad: 20)
let persona2 = Persona(nombre: "Sara", edad: 20)

let persona3 = persona1

// ==

if(persona1 == persona2) {
    print("Operador == -> persona1 y persona2 tienen los mismos valores")
} else {
    print("Operador == -> persona1 y persona2 NO tienen los mismos valores")
}

if(persona1 == persona3) {
    print("Operador == -> persona1 y persona3 tienen los mismos valores")
} else {
    print("Operador == -> persona1 y persona3 NO tienen los mismos valores")
}

// ===

if(persona1 === persona2) {
    print("Operador === -> persona1 y persona2 son la misma instancia.")
} else {
    print("Operador === -> persona1 y persona2 NO son la misma instancia")
}

if(persona1 === persona3) {
    print("Operador === -> persona1 y persona3 son la misma instancia")
} else {
    print("Operador === -> persona1 y persona3 NO son la misma instancia")
}
