//: ### Extensiones
//: 1) ¿Cómo añadir un nuevo subíndice a un tipo existente?

//subscript -> miVariableString[]

let miTexto = "nuestro texto es este"


extension String {
    subscript(n: Int) -> Int? {
        let alfabeto = ["A", "B", "C", "D", "E" ,"F", "G", "H", "I", "J", "K", "L", "M", "N" ,"O" ,"P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

        let i = self.index(self.startIndex, offsetBy: n)
        return alfabeto.firstIndex(of: self[i].uppercased())
    }
}

print("La letra \(miTexto[miTexto.startIndex]) es el número \(miTexto[0] ?? -1) del alfabeto.")
print("La letra \(miTexto[miTexto.index(miTexto.startIndex, offsetBy: 1)]) es el número \(miTexto[1] ?? -1) del alfabeto.")
print("La letra \(miTexto[miTexto.index(miTexto.startIndex, offsetBy: 2)]) es el número \(miTexto[2] ?? -1) del alfabeto.")
print("La letra \(miTexto[miTexto.index(miTexto.startIndex, offsetBy: 3)]) es el número \(miTexto[3] ?? -1) del alfabeto.")
print("La letra \(miTexto[miTexto.index(miTexto.startIndex, offsetBy: 4)]) es el número \(miTexto[4] ?? -1) del alfabeto.")

