//: ### Extensiones
//4) ¿Cómo comprobar si un String es nil o vacío?


let miStringOpcional: String? = "tenemos texto en miStringOpcional"


if let miStringOpcional, !miStringOpcional.isEmpty  {
    print(miStringOpcional)
}

extension String? {
    var isNilOrEmpty: Bool {
        (self ?? "").isEmpty
    }
}

if miStringOpcional.isNilOrEmpty {
    print("miString es nil o empty")
} else {
    print("miString no es nil, ni empty")
}

