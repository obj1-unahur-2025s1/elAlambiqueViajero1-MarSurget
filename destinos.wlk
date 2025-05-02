import elAlambiqueViajero.*


object paris{
    method recuerdoTipico() = "Llavero Torre Eiffel"
    method puedeLlegar(vehiculo) =  vehiculo.tieneCombustible() 
}

object buenosAires{
    method recuerdoTipico() = "Mate"
    method puedeLlegar(vehiculo) =  vehiculo.rapido() 
}

object bagdad {
    var recuerdo = "bidon de petroleo"
    method recuerdoTipico() = recuerdo
    method recuerdo(nuevo) {recuerdo = nuevo }
    method puedeLlegar(vehiculo) = true
}

object lasVegas{
    var lugarHomenajeado = paris
    method homenaje(lugar) {
        lugarHomenajeado = lugar
    }
    method recuerdoTipico() = lugarHomenajeado.recuerdoTipico()
    method puedeLlegar(vehiculo) = lugarHomenajeado.puedeLlegar(vehiculo)
}


object rio {
  method recuerdoTipico() = "mono"
  method puedeLlegar(vehiculo) =  vehiculo.tieneRuedas() 
}


