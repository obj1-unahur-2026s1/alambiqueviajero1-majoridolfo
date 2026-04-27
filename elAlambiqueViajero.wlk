
object luke {
    const primerViaje = paris
   var ultimoViaje = buenosAires
    var totalViajes = primerViaje
    var auto = alambiqueVeloz
  
  method lugaresVisitados(){totalViajes = totalViajes + ultimoViaje}
  method ultimoRecuerdo(){ return ultimoViaje.recuerdo() }
  method cambiarAuto(otroAuto){ auto = otroAuto}
}

object paris {
   
  method recuerdo(){ "llavero" }
  method requisito (unAuto){return unAuto.combustibleSuficiente()}
}

object buenosAires{
    const presidenteDerecha = true
    method recuerdo(unMate) = (presidenteDerecha) == unMate.mateConYerba()
    method requisito(unAuto) {return unAuto.esRapido()}
}
object mate{
    method mateConYerba(){}
    method mateSinYerba(){}
}

object bagdad{
 var tipoRecuerdo = bidonPetroleo
method recuerdo(){ return tipoRecuerdo}
method requisitos(unAuto){}
}
object bidonPetroleo{}
object armas{}
object jardin{}

object lasVegas{
  var lugarHomenajeado = buenosAires
 method recuerdo(){return lugarHomenajeado.recuerdo()}
 method homenaje(){ return lugarHomenajeado}
 method requisito(unAuto){lugarHomenajeado.requisito(unAuto)}
}
object alambiqueVeloz {
  var combustibleSuficiente = true
  const esRapido = true
  method combustible(){return combustibleSuficiente}
  method veloz(){return esRapido}
  method puedeViajar(lugar){(lugar.requisito()) == {self.cumplirRequisito()}}
  method cumplirRequisito(){return (combustibleSuficiente) or (esRapido)}

}

object millo{
  var combustibleSuficiente = true
  var esRapido = true
  var personas = 8
  method combustible(){return combustibleSuficiente}
  method veloz(){(personas >= 15) == {esRapido = false} }
  method puedeViajar(lugar){(lugar.requisito()) == {self.cumplirRequisito()}}
  method cumplirRequisito(){return (combustibleSuficiente) or (esRapido)}
  
}
