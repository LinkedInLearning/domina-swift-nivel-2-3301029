//: ### Concurrencia
//: 4) Cancelación de tasks.

import Foundation

//Ejemplo task1 ->

let task1 = Task {
    print("Pausamos y depués seguimos con la tarea...")
    try await Task.sleep(nanoseconds: 3_000_000_000)
    print("La tarea se completará después de la pausa")
}

task1.cancel()

//Ejemplo task2 ->

func fetchCatFact() async throws -> Data {
    let url = URL(string: "https://catfact.ninja/fact")!
    let (data, _) = try await URLSession.shared.data(from: url)
    return data
}

let task2 =  Task {
    print("Llamamos a la API de CatFacts")
    do {
        let data = try await fetchCatFact()
        let fact = String(decoding: data, as: UTF8.self)
        print(fact)
    } catch {
        print("Error : \(error)")
    }
}


task2.cancel()


//Ejemplo task3 ->
    //Task.isCancelled o Task.checkCalcellation()


func asyncTask() async {
    for i in 1...10 {
           // Verificar si la tarea ha sido cancelada
           if Task.isCancelled {
               print("Tarea cancelada en iteración \(i)")
               return // Salir de la tarea si ha sido cancelada
           }
           
           // Simulación de una operación asíncrona
            try? await Task.sleep(nanoseconds: 1_000_000_000) // Dormir durante 1 segundo (1_000_000_000 nanosegundos)
           
           print("Iteración \(i)")
       }
}

let task3 = Task {
    await asyncTask()
}

Task {
    try? await Task.sleep(nanoseconds: 2_000_000_000)
    task3.cancel()
}

