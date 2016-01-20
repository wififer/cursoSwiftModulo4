//: Playground - noun: a place where people can play

import UIKit


enum Velocidades : Int {
    
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init( velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}

class Auto{
    var velocidad : Velocidades
    
    init(){
        self.velocidad = Velocidades(velocidadInicial: .Apagado);
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        
        let velocidadActual = velocidad
        var velocidadEnCadena : String
        
        switch velocidad{
        case Velocidades.Apagado:
            self.velocidad = Velocidades.VelocidadBaja
            velocidadEnCadena = "Apagado"
        case .VelocidadBaja:
            self.velocidad = .VelocidadMedia
            velocidadEnCadena = "Velocidad Baja"
        case .VelocidadMedia:
            self.velocidad = .VelocidadAlta
            velocidadEnCadena = "Velocidad Media"
        case .VelocidadAlta:
            self.velocidad = .VelocidadMedia
            velocidadEnCadena = "Velocidad Alta"
        }
        
        return (velocidadActual.rawValue, velocidadEnCadena)
    }
    
}

var auto = Auto()

for a in 1...20{
    
    let (velocidadActual , velocidadEnCadena) = auto.cambioDeVelocidad()
    print("\(a). \(velocidadActual) , \(velocidadEnCadena)")
    
}