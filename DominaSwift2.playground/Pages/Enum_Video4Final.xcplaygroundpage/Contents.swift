//: ### Enums
//:4) ¿Cómo comprobar un caso de un enum con una sentencia if?

enum Dia {
    case lunes(Int)
    case martes(Int)
    case miercoles(Int)
    case jueves(Int)
    case viernes(Int)
    case sabado(Int)
    case domingo(Int)
}


var dia1 = Dia.lunes(5)

//Si el enum no tiene valores asociados
//If dia1 == Dia.lunes {
//    print("Dia1 es lunes")
//}

if case Dia.lunes = dia1 {
    print("Dia1 es lunes")
}

if case let Dia.lunes(nDia) = dia1 {
    print("Dia1 es lunes \(nDia)")
}

if case let Dia.lunes(nDia) = dia1, nDia > 1 {
    print("Dia1 es lunes \(nDia), (no es primero de mes)")
}

switch dia1 {
case .lunes:
    print("Switch: Dia1 es lunes")
default:
    print("Switch: Dia1 es otro")
}
