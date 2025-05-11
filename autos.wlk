import dominic.*

object ferrari{
  var motor = 87
  method motor() = motor
  method motor(nuevoValor) {
    motor = nuevoValor
  }
  method estaEnCondiciones() = motor >= 65
  method reparar() {
    motor = 100
  } 
  method velocidadMaxima() = 110 + if(motor > 75) 15 else 0 //15 if motor() > 75 else 0
  method hacerPrueba(){
    motor = (motor - 30).max(0)
      //motor = 0.max(motor - 30)
  }
}

object flecha{
  var cantCombustible = 100
  var combustible = gasolina
  var color = azul
  method estaEnCondiciones() = 
    cantCombustible > combustible.nivelMinimo(cantCombustible) and
    color.esAptoParaCorrer()

  method setCombustible(nuevoCombustible) {
    combustible = nuevoCombustible
    }
  method setColor(nuevoColor) {
    color = nuevoColor
    }

  method reparar() {
    cantCombustible = cantCombustible * 2  
    color = color.cambiarColor()
  }
  method velocidadMaxima() {
    return cantCombustible * 2 + combustible.calculoAdicional(cantCombustible)
  }
  
  method hacerPrueba(){
    cantCombustible = (cantCombustible - 5).max(0)
  }
}

object intocable{
  var property estaEnCondiciones = true
  method hacerPrueba() {
    estaEnCondiciones = false 
  }  
  method reparar(){
    estaEnCondiciones = true
  }
  method velocidadMaxima() = 45
}

object inventado {
  var nivelNitro = 3
  method estaEnCondiciones() {
    return nivelNitro >= 1
  } 
  method reparar() {
    nivelNitro = 3
    }
  method velocidadMaxima() = 100 + (10 * nivelNitro)
  method hacerPrueba(){
    nivelNitro = (nivelNitro - 1).max(0)
  } 
  
}

object azul{
  method cambiarDeColor() = verde 
  method esAptoParaCorrer() = false
}

object rojo{
  method cambiarDeColor() = azul 
  method esAptoParaCorrer() = true
}

object verde{
  method cambiarDeColor() = rojo 
  method esAptoParaCorrer() = false
}

object gasolina{
  method nivelMinimo()= 85
  method calculoAdicional(litros) = 10
}

object nafta{
  method nivelMinimo() = 50
  method calculoAdicional(litros) = -1 * ((litros * 2) * 0.1)
  ///-1 ESTO ME LO TRANSFORMA EN NEGATIVO PARA QUE RESTE * (litros * 2) ESTO ME DA EL VALOR BASE * 0.1 CALCULO EL 10%
}
object nitrogenoLiquido{
  method nivelMinimo() = 0
  method calculoAdicional(litros) =  litros * 2 * 10
}