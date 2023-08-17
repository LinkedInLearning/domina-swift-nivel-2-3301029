//: ### Enums
//: 7) Añadir una función next() a un tipo enum.

enum Dia {
    case lunes
    case martes
    case miercoles
    case jueves
    case viernes
    mutating func next() {
        switch self {
        case .lunes:
            self = .martes
        case .martes:
            self = .miercoles
        case .miercoles:
            self = .jueves
        case .jueves:
            self = .viernes
        case .viernes:
            self = .lunes
        }
    }
}

var dia = Dia.lunes
print("Hoy es \(dia)")
dia.next()
print("Hoy es \(dia)")
dia.next()
print("Hoy es \(dia)")

enum DiaB: Int {
    case lunes
    case martes
    case miercoles
    case jueves
    case viernes
}
extension DiaB {
    mutating func next() {
        self = DiaB.init(rawValue: self.rawValue + 1) ?? .lunes
    }
}
var diaB = DiaB.jueves
print("Día B es \(diaB)")
diaB.next()
print("Día B es \(diaB)")
diaB.next()
print("Día B es \(diaB)")
diaB.next()
print("Día B es \(diaB)")
diaB.next()
