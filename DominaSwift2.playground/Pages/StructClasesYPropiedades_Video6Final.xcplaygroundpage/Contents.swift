//: ### Struct, Clases y Propiedades
//:6) Una variable que es de tipo wrapper. ¿Puedo acceder al valor exacto asignado a la variable?

//nLados cómo máximo puede ser 9 y mínimo 3
@propertyWrapper
struct LadosPoligono {
    private var numero: Int
    private(set) var projectedValue: Int
    var wrappedValue: Int {
        get { numero }
        set {
            numero = max(min(newValue, 9),3)
            projectedValue = newValue
        }
    }
    init() {
        self.numero = 3
        self.projectedValue = 3
    }
}
struct Poligono {
    var longitudLado: Int
    @LadosPoligono var nLados: Int
}
var miPoligono = Poligono(longitudLado: 10)
miPoligono.nLados = 10
print(miPoligono)
miPoligono.$nLados
