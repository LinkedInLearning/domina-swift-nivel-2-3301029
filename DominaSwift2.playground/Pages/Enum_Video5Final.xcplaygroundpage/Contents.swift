//: ### Enums
// :5) ¿Cómo obtener los valores asociados a un enum?

enum Dia {
    case sabado(Int, esFestivo: Bool)
    case domingo(Int, esFestivo: Bool)
    var numeroDia: Int {
        switch self {
        case .sabado(let n, _):
            return n
        case .domingo(let n, _):
            return n
        }
    }
}

var dia1 = Dia.sabado(14, esFestivo: true)
dia1.numeroDia
print("El día 1 es \(dia1.numeroDia)")

switch dia1 {
case  .sabado(let nDia, let festivo):
    print("Es sábado \(nDia) es festivo: \(festivo)")
case let .domingo(nDia, _):
    print("Es domingo \(nDia)")
}
