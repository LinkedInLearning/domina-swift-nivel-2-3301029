//: ### Concurrencia
//: 2) ¿Cómo crear y usar una función asíncrona?


import Foundation

// Api -> https://catfact.ninja/fact

func getCatFact() async -> Data? {
    guard let url = URL(string: "https://catfact.ninja/fact") else { return nil }
    do {
        let (data, _) = try await URLSession.shared.data(from: url)
        return data
    } catch {
        return nil
    }
}

Task {
    if let factData = await getCatFact() {
        let fact = String(decoding: factData, as: UTF8.self)
        print(fact)
    }
}

