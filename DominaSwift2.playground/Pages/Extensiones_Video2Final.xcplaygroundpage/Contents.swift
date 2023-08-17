//: ### Extensiones
//: 2) Añadir un subcript para acceder a un array de números de manera segura.

var array = [2,3,5,6,5,3,2]

extension Array {
    subscript(indexSeguro index: Int) -> Element? {
        guard index>=0, index<endIndex else {
            return nil
        }
        return self[index]
    }
}
print("El número en la posición 2 = \(array[indexSeguro: 2])")
print("El número en la posición 20 = \(array[indexSeguro: 20])")



