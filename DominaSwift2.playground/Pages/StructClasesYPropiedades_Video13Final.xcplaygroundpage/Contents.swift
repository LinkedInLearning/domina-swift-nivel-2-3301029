//: ### Struct, Clases y Propiedades
//: 13) KeyPaths: Ordenar un array de structs o clases.

import Foundation

struct Pizza {
    let nombre: String
    let precio: Float
    var ingredientes: [String]
}

let pizzeriaA: [Pizza] = [
    Pizza(nombre: "Margarita", precio: 15, ingredientes: ["Queso mozzarrella", "Albahaca", "Salsa de tomate"]),
    Pizza(nombre: "Pepperoni", precio: 18, ingredientes: ["Queso mozzarrella", "Pepperoni", "Salsa de tomate"]),
    Pizza(nombre: "Hawaiana", precio: 16, ingredientes: ["Queso mozzarrella", "Jamón", "Piña"])
]

var customPizza = Pizza(nombre: "Custom", precio: 20, ingredientes: ["Queso mozzarrella", "Albahaca", "Salsa de tomate", "Jamón", "Pepperoni"])

//KeyPath
let precioKeyPath = \Pizza.precio
customPizza[keyPath: precioKeyPath]
customPizza[keyPath: \.nombre]
customPizza.nombre
customPizza[keyPath: \.ingredientes].removeLast()

pizzeriaA.sorted(using: KeyPathComparator(\.precio))
