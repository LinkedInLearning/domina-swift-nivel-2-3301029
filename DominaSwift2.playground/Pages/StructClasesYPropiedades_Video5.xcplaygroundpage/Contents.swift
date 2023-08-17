//: ### Struct, Clases y Propiedades
//:5) ¿Cómo añadir valores iniciales a propiedades de envoltura (wrapper property) ?

struct Poligono {
    var longitudLado: Int
    @LadosPoligono var nLados: Int
}


//nLados como máximo puede ser 9 y mínimo 3
@propertyWrapper
struct LadosPoligono {
    private var numero: Int = 3
    var wrappedValue: Int {
        get { numero }
        set { numero = max(min(newValue, 9),3) }
    }
}

