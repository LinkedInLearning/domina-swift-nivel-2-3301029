//: ### Concurrencia
//: 1) Secuencias asíncronas en Swift.

import Foundation

//api : "https://catfact.ninja/fact"

struct FactCats: Codable {
    let fact: String
    let length: Int
}
