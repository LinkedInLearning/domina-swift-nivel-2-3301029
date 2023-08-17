//: ### Errores
//:2) ¿Cuándo usar try, try? o try!?

//Manejo de errores ->
//1) Propagar el error -> try
//2) Usar la sentencia do-catch -> try
//3) Manejar el error como un valor opcional -> try?
//4) Considerar que el error no va a ocurrir -> try!

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
