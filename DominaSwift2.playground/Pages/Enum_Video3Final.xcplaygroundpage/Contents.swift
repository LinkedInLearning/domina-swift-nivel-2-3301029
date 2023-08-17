//: ### Enums
//3 ¿Cómo tener un enum con valores asociados y valores raw?

// Valor asociado + valor Raw = NO ES POSIBLE
/*enum Idioma: String {
    case en(String) = "Inglés"
    case es(String) = "Español"
    case pt(String) = "Portugués"
}*/

enum Idioma {
    case en(String)
    case es(String)
    case pt(String)
    
    var nombre: String {
        switch self {
        case .en:
            return "Inglés"
        case .es:
            return "Español"
        case .pt:
            return "Portugués"
        }
    }
}

let idioma1 = Idioma.es("Uruguay")


print("Idioma1 es \(idioma1.nombre)")

