//: ### Struct, Clases y Propiedades
//: 9) ¿Cuál es la diferencia entre una variable static y una variable class?

class Receta {
    let nombre: String
    
//    static var numeroMaxIngredientes: Int { 10 }
    class var numeroMaxIngredientes: Int { 10 }
    
    init(nombre: String) {
        self.nombre = nombre
    }
}
class Pastre: Receta {
    override static var numeroMaxIngredientes: Int { 15 }
}

