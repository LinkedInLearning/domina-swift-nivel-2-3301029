//: ### Enums
//: 2) En un enum podemos tener valores asociados o valores raw. ¿Cuál es la diferencia?


// Valores Asociados
enum Gafa {
    case sol(Int)
    case graduadas(Float, Float)
}

var gafaA = Gafa.sol(1)


var gafa1 = Gafa.graduadas(-1, -0.75)


//Valores Raw

enum Vocal: Character {
    case a = "a"
    case e = "e"
    case i = "i"
    case o = "o"
    case u = "u"
}
Vocal.a.rawValue
