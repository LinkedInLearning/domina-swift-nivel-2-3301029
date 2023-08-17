//: ### Struct, Clases y Propiedades
//: 3) ¿Cuál es la diferencia entre los observadores didset y willset de una propiedad?

struct Contador {
    var total: Int = 0 {
        willSet{
         print("Justo antes de cambiar el valor de \(total) a \(newValue)")
        }
        didSet {
            print("Ahora total es \(total) y antes era \(oldValue)")
        }
    }
    
}

var miNuevoContador = Contador()
miNuevoContador.total = 30
miNuevoContador.total = 50

