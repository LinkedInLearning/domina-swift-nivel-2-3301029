//: ### Enums
//: 1) ¿Cómo iterar sobre todos los casos de una clase enum?

enum Dia: CaseIterable {
    case LUNES
    case MARTES
    case MIERCOLES
    case JUEVES
    case VIERNES
    case SABADO
    case DOMINGO
}

let dias = Dia.allCases

for caso in Dia.allCases {
    print(caso)
}
