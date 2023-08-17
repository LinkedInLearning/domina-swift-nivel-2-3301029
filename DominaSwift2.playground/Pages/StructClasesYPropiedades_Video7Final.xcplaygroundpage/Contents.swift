//: ### Struct, Clases y Propiedades
//: 7) Variables y constantes static en Swift. Propiedades de tipo.

struct Colmena {
    var nAbejas: Int = 0 {
        didSet {
            if nAbejas > Colmena.limiteAbejas {
                nAbejas = Colmena.limiteAbejas
            }
            if nAbejas > Colmena.maximoNumeroDeAbejas {
                Colmena.maximoNumeroDeAbejas = nAbejas
            }
        }
    }
    static let limiteAbejas = 90_000
    
    static var maximoNumeroDeAbejas = 0
    
}
print("El máximo número de Abjeas que hay en alguna colmena es \(Colmena.maximoNumeroDeAbejas)")
print("El límite es : \(Colmena.limiteAbejas)")
var colmenaA = Colmena()
colmenaA.nAbejas = 500
print("El máximo número de Abjeas que hay en alguna colmena es \(Colmena.maximoNumeroDeAbejas)")
print("El límite es : \(Colmena.limiteAbejas)")
var colmenaB = Colmena()
colmenaB.nAbejas = 60_000
print("El máximo número de Abjeas que hay en alguna colmena es \(Colmena.maximoNumeroDeAbejas)")
print("El límite es : \(Colmena.limiteAbejas)")
