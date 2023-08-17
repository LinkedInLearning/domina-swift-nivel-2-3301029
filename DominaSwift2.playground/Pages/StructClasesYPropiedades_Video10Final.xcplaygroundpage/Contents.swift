//: ### Struct, Clases y Propiedades
//:10) Herencia de clases. ¿Cómo crear una subclase?
class Animal {
    var numeroPatas: Int
    
    var descripcion: String {
        "Animal con \(numeroPatas) patas"
    }
    
    func sonido() {
        //
    }
    init(numeroPatas: Int) {
        self.numeroPatas = numeroPatas
    }
    
}

let animal = Animal(numeroPatas: 4)

class Serpiente: Animal {
    let venenosa: Bool
    
    override var descripcion: String {
        "La serpiente es un animal con \(super.numeroPatas). Venenosa: \(self.venenosa)"
    }
    override func sonido() {
        print("Ssss")
    }
    
    init(venenosa: Bool) {
        self.venenosa = venenosa
        super.init(numeroPatas: 0)
    }
}
let serpiente = Serpiente(venenosa: false)
dump(serpiente)

