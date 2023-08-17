//: ### Struct, Clases y Propiedades
//: 4) ¿Qué son los Property wrappers?

struct Poligono {
    var longitudLado: Int
    @LadosPoligono var nLados: Int
}

// máximo 9 lados, mínimo 3 lados
@propertyWrapper
struct LadosPoligono {
    
    private var numero = 3
    
    var wrappedValue: Int {
        get { numero }
        set { numero = max(min(newValue, 9), 3) }
    }
}
var miPoligono = Poligono(longitudLado: 10)
print(miPoligono)
miPoligono.nLados = 20
print(miPoligono)
