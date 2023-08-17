//: ### Concurrencia
//: 5) ¿Qué es un actor y cuál es su función?

actor ContadorActor {
    private var contador = 0
    
    func incrementar() {
        contador += 1
    }
    func getContador() -> Int {
        return contador
    }
}
class ContadorClass {
    private var contador = 0
    
    func incrementar() {
        contador += 1
    }
    func getContador() -> Int {
        return contador
    }
}
Task {
    let actor = ContadorActor()
    let clase = ContadorClass()
    Task {
        for _ in 1...500 {
            clase.incrementar()
        }
    }
    Task {
        for _ in 1...500 {
            clase.incrementar()
        }
    }
    //Actor
    Task {
        for _ in 1...500 {
            await actor.incrementar()
        }
    }
    Task {
        for _ in 1...500 {
            await actor.incrementar()
        }
    }
    try? await Task.sleep(nanoseconds: 6_000_000_000)
    
    let contadorActor = await actor.getContador()
    let contadorClass = clase.getContador()
    print("Class: contador =  \(contadorClass)")
    print("Actor: contador =  \(contadorActor)")
}
