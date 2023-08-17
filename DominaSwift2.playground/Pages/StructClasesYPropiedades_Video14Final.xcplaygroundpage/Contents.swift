//: ### Struct, Clases y Propiedades
//: 14) Con un array de structs, ¿Cómo obtener un array de una de sus propiedades?


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
