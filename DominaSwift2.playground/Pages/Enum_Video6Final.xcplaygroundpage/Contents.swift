//: ### Enums
//: 6) ¿Qué son los indirect enums?

// Lista linkada de tareas
// 1 -> 2 -> 3 -> 4
enum ListaDeTareas {
    indirect case analisis(siguiente: ListaDeTareas)
    indirect case tarea(id: Int, siguiente: ListaDeTareas)
    case evaluacion
}
let listaA = ListaDeTareas.analisis(siguiente:
                                        ListaDeTareas.tarea(id: 1, siguiente:
                                                                ListaDeTareas.tarea(id: 2, siguiente:
                                                                                        ListaDeTareas.evaluacion)))
func evaluarLista(lista: ListaDeTareas) {
    switch lista {
    case let .analisis(siguiente: valor):
        print("Estamos en fase análisis")
        evaluarLista(lista: valor)
    case let .tarea(id: id, siguiente: valor):
        print("Estamos en fase tarea \(id)")
        evaluarLista(lista: valor)
    case .evaluacion:
        print("Estamos en evaluación")
    }
}
evaluarLista(lista: listaA)


