//: ### Struct, Clases y Propiedades
//: 11) No puedo acceder a los inicializadores por defecto de un struct. ¿Por qué?

struct Receta {
    var nombre: String
    var ingredientes: [String:Int]

}
let recetaA = Receta(nombre: "Pasta", nombres: ["pasta", "tomate"], gramos: [200, 50])
let recetaB = Receta(nombre: "Pasta", ingredientes: ["pasta": 200, "tomate": 50])

extension Receta {
    init(nombre: String, nombres: [String], gramos: [Int]) {
        self.nombre = nombre
        self.ingredientes = Dictionary(uniqueKeysWithValues: zip(nombres, gramos))
    }
}


