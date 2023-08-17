//: ### Struct, Clases y Propiedades
//: 11) No puedo acceder a los inicializadores por defecto de un struct. ¿Por qué?

struct Receta {
    var nombre: String
    var ingredientes: [String:Int]
    
    init(nombre: String, nombres: [String], gramos: [Int]) {
        self.nombre = nombre
        self.ingredientes = Dictionary(uniqueKeysWithValues: zip(nombres, gramos))
    }
}
