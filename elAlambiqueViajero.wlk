import destinos.*

object luke{
    var cantidadViajes = 0
    var recuerdo = null
    var vehiculoUsado = alambiqueVeloz

    method cantidadViajes() = cantidadViajes 

    method usarVehiculo(vehiculo) {
       vehiculoUsado = vehiculo
    }

    method viajar(lugar){
        if (lugar.puedeLlegar(vehiculoUsado)) {
            cantidadViajes = cantidadViajes + 1
            recuerdo = lugar.recuerdoTipico()
            vehiculoUsado.consumirCombustible()
        }
    }
    method recuerdo() = recuerdo
    method reset() {
    cantidadViajes = 0
    recuerdo = null
    vehiculoUsado = alambiqueVeloz
}

}

object alambiqueVeloz {
    var rapido = true
    var combustible = 20
    const consumoPorViaje = 10
    method tieneCombustible() = combustible >= consumoPorViaje
    method consumirCombustible() {
        combustible = combustible - consumoPorViaje
    }
    method rapido() = rapido
}

object moto {
    const rapido = true
    var combustible = 20
    const ruedas = false
    const consumoPorViaje = 10
    method tieneCombustible() = combustible >= consumoPorViaje
    method consumirCombustible() {
        combustible = combustible - consumoPorViaje
    }
    method rapido() = rapido
    method tieneRuedas() = ruedas
}


object superChatarraEspecial {
  const rapido = false
  var canones = 5
  const consumoPorViaje = 10
  method combustible() = canones * 50
  method cantidadCanones() = canones
  method tieneCombustible() = self.combustible() >= consumoPorViaje
   method consumirCombustible() {
        canones = canones - 1 
    }
    method rapido() = rapido
}

object antiguallaBlindada {
    var gangster = 6
    var combustible = 200 
    const consumoPorViaje = 40
    method combustible() = combustible 
    method rapido() = gangster < 4 
    method cantidadDeGangsters() = gangster
    method cantidadCombustible() = combustible
    method consumirCombustible() {
        combustible = combustible - 20
    }
    method bajarGangsters() {
        if (combustible < 100){
            gangster = gangster - 1
        } 
     } 
    method tieneCombustible() = self.combustible() >= consumoPorViaje

}

object superConvertible {
    var vehiculoAConvertir = superChatarraEspecial
    method convertirEn(vehiculo) {
        vehiculoAConvertir = vehiculo
    }
    method tieneCombustible() = vehiculoAConvertir.tieneCombustible()
    method consumirCombustible() = vehiculoAConvertir.consumirCombustible()
    method rapido() = vehiculoAConvertir.rapido()
}