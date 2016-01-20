//: Playground - noun: a place where people can play

import UIKit

enum Velocidades: Int {
    
    case Apagado = 0 // representa la velocidad 0.
    
    case VelocidadBaja = 20 // representa una velocidad de 20km por hora.
    
    case VelocidadMedia = 50 //representa una velocidad de 50km por hora
    
    case VelocidadAlta = 120 // representa una velocidad de 120km por hora.
    
    init( velocidadInicial : Velocidades){
      self = velocidadInicial
    }
}

class Auto {
    
    var velocidad:Int = Velocidades.Apagado.rawValue
    
    init(velocidad:Int) {
        self.velocidad = velocidad
    }
    
    func cambioDeVelocidad(v:Int) -> ( actual : Int, velocidadEnCadena: String){
        
       
        var velocidadActual:Int = velocidad
        var leyenda:String = ""
        
        switch v {
        case 0 :
            velocidadActual = 20
            leyenda = "Velocidad baja"
        case 20 :
            velocidadActual = 50
            leyenda = "Velocidad media"
        case 50 :
            velocidadActual = 120
            leyenda = "Velocidad alta"
        case 120 :
            velocidadActual = 50
            leyenda = "Velocidad media"
        
        default:break
        
        }
        
        
        
        
        return(velocidadActual,leyenda)
    }
}



var auto = Auto(velocidad: Velocidades.Apagado.rawValue)
print("1.",auto.velocidad ,"Apagado")

for (var i=2; i <= 20; i++) {
    
    var cambio = auto.cambioDeVelocidad(auto.velocidad)
    print("\(i).","\(cambio.actual), \(cambio.velocidadEnCadena)")
    auto = Auto(velocidad: cambio.actual)
    
}