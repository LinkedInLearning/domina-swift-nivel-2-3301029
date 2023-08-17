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


Propiedades.shared.añadirValor(nombrePropiedad: "color", valor: "verde")

print("La propiedad color es : \(Propiedades.shared.devolverValor(de: "color") ?? "no existe")")


// Extensión de subscript estático ->

extension Propiedades {
    static subscript(_ clave:String) -> String? {
        set {
            self.shared.propiedades[clave] = newValue
        }
        get {
            self.shared.propiedades[clave]
        }
    }
}

Propiedades["temperatura"] = "24 ºC"

print("La propiedad temperatura es : \(Propiedades["temperatura"] ?? "no existe")")

