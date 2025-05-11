import autos.*
object dominic{
  const autos = []
  method comprar(unAuto) {
    autos.add(unAuto)
  }
  method autosNoEnCondiciones() = autos.filter({a=>!a.estaEnCondiciones()})
  method autosEnCondiciones() = autos.filter({a=>a.estaEnCondiciones()})
 
  method mandarAutosAlTaller(){
    taller.recibirAutos(self.autosNoEnCondiciones())
  }
  
  method realizarPruebasDeVelocidad(){
    autos.forEach({a=> a.hacerPrueba()})
  }
  
  method venderAutos(){
    autos.clear()
  }
  method promedioDeVelocidadesMax() = autos.sum({a=>a.velocidadMaxima()}) / autos.size()
  
  method autoMasRapido() = self.autosEnCondiciones().max({a=>a.velocidadMaxima()})
  
  method hayUnAutoMuyRapido() = self.autoMasRapido().velocidadMaxima() > 2 * self.promedioDeVelocidadesMax()
}

object taller{
  const autosAReparar = []
  method recibirAutos(listaDeAutos){
    autosAReparar.addAll(listaDeAutos)
  }
  method repararAutos(){
    autosAReparar.forEach({a=>a.reparar()})
    autosAReparar.clear()
  }
}

