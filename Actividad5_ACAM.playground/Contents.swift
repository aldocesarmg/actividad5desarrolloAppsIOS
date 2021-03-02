import UIKit

class Persona {
    let nombre:String

    init (name:String) {
        self.nombre = name
    }

    func saludar(name:String) {
        print("Hola \(name), mucho gusto.")
    }

    func caminar(pasos:Int) -> String {
        return String(pasos)
    }
}

let aldo = Persona (name: "Aldo")
aldo.saludar(name: "Aldo")
print(aldo.caminar(pasos: 15))

struct Pantalla {
    let alto:Int
    let ancho:Int
    
    init(alto_:Int, ancho_:Int) {
        self.alto = alto_
        self.ancho = ancho_
    }
    
}

let miPantalla = Pantalla(alto_:10, ancho_:20)

extension Int {
    var segundos:Int {
        return self*60*60
    }
}

extension String {
    var numDia:Int {
        switch self {
        case "Lunes":
            return 1
        case "Martes":
            return 2
        case "Miércoles":
            return 3
        case "Jueves":
            return 4
        case "Viernes":
            return 5
        case "Sábado":
            return 6
        case "Domingo":
            return 7
        default:
            fatalError("Unsupported")
        }
        
    }
}

print(3.segundos)
print("Viernes".numDia)

let dias = ["GDL":120, "PUE":300, "MTY":100, "CDMX":200]
var existe:Int?

existe = dias["DF"]
print(existe)
