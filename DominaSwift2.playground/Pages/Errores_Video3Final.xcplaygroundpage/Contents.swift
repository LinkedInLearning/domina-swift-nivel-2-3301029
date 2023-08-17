//: ### Errores
//: 3) Cómo hacer que una closure, parámetro de una función, lance un error.

func calculoCostoso(calculo: () throws -> Void) rethrows {
    try calculo()
}

calculoCostoso {
    print("Realizando cálculo...")
}

enum ErrorCalculo: Error {
    case error
}

do{
    try calculoCostoso {
        let x = Int.random(in: 1...5)
        if x == 2 {
            throw ErrorCalculo.error
        }
    }
}catch {
    print("Error \(error)")
}




