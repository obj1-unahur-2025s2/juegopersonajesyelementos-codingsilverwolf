import armas.*
import elementos.*

object luisa {
    var personajeActivo = floki
    //getter
    method personajeActivo() {
        return personajeActivo      
    }
    method cambiarPersonaje(unPersonaje){
        personajeActivo = unPersonaje
    }
    method aparece(elemento){
        personajeActivo.encontrar(elemento)
    }
  
}

object floki {
    var arma = ballesta
    //getter
    method arma(){
        return arma
    }
    method equipar(unArma){
        arma = unArma
    }
    
    method encontrar(elemento){
        if (arma.estaCargada()){
            elemento.recibirAtaque(arma.potencia())
            arma.usar()
        }
    
    }
}

object mario {
    var valorRecolectado = 0
    var ultimoElementoEncontrado = ningunElemento
    method valorRecolectado(){
        return valorRecolectado
    }
    method encontrar(elemento){
        valorRecolectado = elemento.otorgarValor()
        elemento.recibirTrabajo()
        ultimoElementoEncontrado = elemento

    }
    method esFeliz(){
        return (ultimoElementoEncontrado.altura() >= 10 || valorRecolectado >= 50)
    }

  
}

// Creamos un elemento neutro que se lleva bien con la felicidad de mario en el caso de que no se encuentre con nada
object ningunElemento {
    method altura (){
        return 0
    }
    method recibirAtaque(){}
    method otorgarValor(){}
    method recibirTrabajo(){}
  
}