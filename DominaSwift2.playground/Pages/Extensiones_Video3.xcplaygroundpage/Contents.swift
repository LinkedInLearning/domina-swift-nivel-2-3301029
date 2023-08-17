//: ### Extensiones
//: 3) ¿Es posible tener un subscript de tipo o static?

final class Propiedades {
    static let shared = Propiedades()
    
    private var propiedades: [String: String] = [:]
    
    private init() {}
    
    func devolverValor(de nombrePropiedad: String) -> String? {
        propiedades[nombrePropiedad]
    }
    
    func añadirValor(nombrePropiedad: String, valor: String) {
       propiedades[nombrePropiedad] = valor
    }
}
