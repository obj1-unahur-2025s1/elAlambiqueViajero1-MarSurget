object luke{
    var cantidadViajes = 0
    var recuerdo = null

    method cantidadViajes() = cantidadViajes 

    method viajar(lugar){
        if (lugar.puedeLlegar()) {
            cantidadViajes = cantidadViajes + 1
            recuerdo = lugar.recuerdoTipico()
            alambiqueVeloz.consumirCombustible()
        }
    }
    method recuerdo() = recuerdo
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

object paris{
    method recuerdoTipico() = "Llavero Torre Eiffel"
    method puedeLlegar() =  alambiqueVeloz.tieneCombustible() 
}

object buenosAires{
    method recuerdoTipico() = "Mate"
    method puedeLlegar() =  alambiqueVeloz.rapido() 
}

object bagdad {
    var recuerdo = "bidon de petroleo"
    method recuerdoTipico() = recuerdo
    method recuerdo(nuevo) {recuerdo = nuevo }
    method puedeLlegar() = true
}

object lasVegas{
    var homenaje = paris
    method homenaje(lugar) {homenaje = lugar}
    method recuerdoTipico() = homenaje.recuerdoTipico()
    method puedeLlegar() = homenaje.puedeLlegar()
}


object rio {
  method recuerdoTipico() = "mono"
  method puedeLlegar() =  moto.tieneRuedas() 
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