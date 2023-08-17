//: ### Struct, Clases y Propiedades
//:5) ¿Cómo añadir valores iniciales a propiedades de envoltura (wrapper property) ?

struct Poligono {
    var longitudLado: Int
    @LadosPoligono(wrappedValue: 5, maximo: 10) var nLados: Int
}

struct PoligonoPorDefecto {
    var longitudLado: Int
    @LadosPoligono var nLados: Int
}

//nLados como máximo puede ser 9 y mínimo 3
@propertyWrapper
struct LadosPoligono {
    private var numero: Int
    private var maximo: Int
    var wrappedValue: Int {
        get { numero }
        set { numero = max(min(newValue, maximo),3) }
    }
    
    init(wrappedValue: Int, maximo: Int) {
        self.maximo = maximo
        self.numero = max(min(wrappedValue, maximo),3)
    }
    init() {
        self.numero = 3
        self.maximo = 9
    }
}

let miPoligono = Poligono(longitudLado: 10)
print(miPoligono)
let miPoligono2 = PoligonoPorDefecto(longitudLado: 10)
print(miPoligono2)
