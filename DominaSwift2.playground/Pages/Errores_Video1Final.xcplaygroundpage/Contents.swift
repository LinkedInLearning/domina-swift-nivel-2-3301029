//: ### Errores
//: 1) Propagar un error a través de más de una función.

//Manejo de errores ->

//1) Propagar el error (OPCIÓN REQUERIDA)
//2) Usar la sentencia do-catch
//3) Manejar el error como un valor opcional
//4) Considerar que el error no va a ocurrir


enum NombreUsuarioError: Error {
    case insuficientesCaracteres
    case demasiadosCaracteres
}

func guardarNombreUsuario(nombre: String) throws {
    guard nombre.count > 3 else {
        throw NombreUsuarioError.insuficientesCaracteres
    }
    guard nombre.count < 10 else {
        throw NombreUsuarioError.demasiadosCaracteres
    }
    print("Guardanado \(nombre) como nombre de usuario...")
}


func cambiarNombreUsuario(anterior: String, nuevo: String) throws {
    print("Se va a realizar el cambio del nombre \(anterior) por el nuevo, \(nuevo)")
    try guardarNombreUsuario(nombre: nuevo)
    print("Se ha guardado el usuario \(nuevo)")
}

try cambiarNombreUsuario(anterior: "NombreAnterior", nuevo: "Sar")
