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
var carlos: Persona? = Persona(nombre: "Carlos")
var apartamentoVacacional: Apartamento? = Apartamento(nombre: "Vistas al mar")

carlos?.apartamento = apartamentoVacacional
apartamentoVacacional?.arrendatario = carlos

apartamentoVacacional

carlos = nil

apartamentoVacacional

// USUARIO ==== STRONG ===> PASE_RAPIDO
// USUARIO <==== UNOWED ===== PASE_RAPIDO
class Usuario {
    let nombre: String
    var paseRapido: PaseRapido?
    init(nombre: String) {
        self.nombre = nombre
    }
    deinit { print("deinit de usuario con nombre: \(nombre)") }
}

class PaseRapido {
    let id: String
    unowned let usuario: Usuario
    
    init(id: String, usuario: Usuario) {
        self.id = id
        self.usuario = usuario
    }
    deinit { print("deinit de pase con id: \(id)") }
}
var usuarioA: Usuario? = Usuario(nombre: "Marta")
usuarioA?.paseRapido = PaseRapido(id: "1234", usuario: usuarioA!)

usuarioA = nil
