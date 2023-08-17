//: ### Struct, Clases y Propiedades
//: 12) Diferencia entre referencias weak y unowned.

// PERSONA ==== STRONG ===> APARTAMENTO
// PERSONA <==== WEAK ===== APARTAMENTO

class Persona {
    let nombre: String
    var apartamento: Apartamento?
    init(nombre: String) {
        self.nombre = nombre
    }
    deinit { print("deinit de persona con nombre: \(nombre)") }
}

class Apartamento {
    let nombre: String
    weak var arrendatario: Persona?
    
    init(nombre: String) {
        self.nombre = nombre
    }
    deinit { print("deinit de apartamento con nombre: \(nombre)") }
}
