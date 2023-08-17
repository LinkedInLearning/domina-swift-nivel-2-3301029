//: ### Concurrencia
//: 1) Secuencias asíncronas en Swift.

import Foundation

struct FactCats: Codable {
    let fact: String
    let length: Int
}

struct CatFactsSequence: AsyncSequence {
    typealias Element = String
    
    func makeAsyncIterator() -> CatFactsIterator {
        return CatFactsIterator(urls: urls)
    }
    
    let urls: [URL]
    
    init(urls: [URL]) {
        self.urls = urls
    }
}

struct CatFactsIterator: AsyncIteratorProtocol {
  
    typealias Element = String
    
    private var index = 0
    private let urlSession = URLSession.shared
    
    
    let urls: [URL]
    
    init(urls: [URL]) {
        self.urls = urls
    }
    
    mutating func next() async throws -> String? {
        
        guard index < urls.count else  {
            return nil
        }
        
        let (data, _) = try await urlSession.data(from: urls[index])
        let decoder = JSONDecoder()
        let fact = try? decoder.decode(FactCats.self, from: data)
        
        index += 1
        return fact?.fact
    }
}


Task {
    let string = "https://catfact.ninja/fact"
    let urls: [URL] = Array(0...5).map { _ in URL(string: string)! }
    
    for try await fact in CatFactsSequence(urls: urls) {
        print("Cat Fact: \(fact) \n")
    }
}

