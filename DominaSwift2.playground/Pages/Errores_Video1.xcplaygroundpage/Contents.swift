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

