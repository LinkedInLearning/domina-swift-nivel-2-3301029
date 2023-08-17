//: ### Errores
//:2) ¿Cuándo usar try, try? o try!?
//Manejo de errores ->

//1) Propagar el error (try)
//2) Usar la sentencia do-catch (try)
//3) Manejar el error como un valor opcional (try?)
//4) Considerar que el error no va a ocurrir (try!)

enum NombreUsuarioError: Error {
    case insuficientesCaracteres
    case demasiadosCaracteres
}


func guardarNombreUsuario(nombre: String) throws -> String {
    guard nombre.count > 3 else {
        throw NombreUsuarioError.insuficientesCaracteres
    }
    guard nombre.count < 10 else {
        throw NombreUsuarioError.demasiadosCaracteres
    }
    print("Guardando \(nombre) como nombre de usuario...")
    
    return nombre
}

// try  -> propagar errores
//      -> manejar errores con do-catch

func propagaError(nombre: String) throws {
    try guardarNombreUsuario(nombre: nombre)
}

do {
    try propagaError(nombre: "Usuario123")
} catch {
    print("Error en propagaError: \(error)")
}

// try? -> convertir errores a valores opcionales

let nombreGuardado = try? guardarNombreUsuario(nombre: "Nom")

print("El nombre guardado es: \(nombreGuardado ?? "no hay nombre, es nil")")


// try! -> deshabilitar la propagación de errores.

let nombreGuardado2 = try! guardarNombreUsuario(nombre: "Pablo")
print("El nombre es : \(nombreGuardado2)")


