//: ### Concurrencia
//: 3) ¿Cómo lanzar varias funciones asíncronas en paralelo y esperar los resultados?

import Foundation

struct FactCats: Codable {
    let fact: String
    let length: Int
}

func getCatFact() async -> String? {
    guard let url = URL(string: "https://catfact.ninja/fact") else { return nil }
    do {
        let (data, _) = try await URLSession.shared.data(from: url)
        let decoder = JSONDecoder()
        let catFact = try? decoder.decode(FactCats.self, from: data)
        return catFact?.fact
    } catch {
        return nil
    }
}
