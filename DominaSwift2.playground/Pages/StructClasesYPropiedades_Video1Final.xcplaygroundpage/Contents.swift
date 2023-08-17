//: ### Struct, Clases y Propiedades
//: 1) Structs Vs Clases.

//Structs -> tipos por valor
//-> Herencia NO

struct Persona {
    let nombre: String
    var edad: Int
}

var persona1 = Persona(nombre: "Sergio", edad: 55)

var persona2 = persona1

persona2.edad = 19

print("Persona1 = \(persona1)")
print("Persona2 = \(persona2)")

//Clases -> tipos por referencia
//-> Herencia SI

class PersonaClass {
    let nombre: String
    var edad: Int
    
    init(nombre: String, edad: Int) {
        self.nombre = nombre
        self.edad = edad
    }
}
var persona1Class = PersonaClass(nombre: "Ana", edad: 85)

let persona2Class = persona1Class

persona2Class.edad = 10

dump(persona1Class, name: "persona 1")
dump(persona2Class, name: "persona 2")
