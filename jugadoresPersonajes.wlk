// jugadora

object luisa{
    var personajeActivo = floki
    // getter y setter
    method personajeActivo(){
        return personajeActivo
    }
    method establecerPersonajeActivo(personaje){
        personajeActivo =  personaje
    }
    method aparece(elemento){
        personajeActivo.encontrar(elemento)
    }
}

// personajes

object floki{
    var armaActual = ballesta
    // getter para arma
    method armaActual(){
        return armaActual
    }
    // setter para arma
    method cambiarArmaActual(unArma){
        armaActual = unArma
    }

    method encontrar(elemento){
        if armaActual.estaCargada() == true{
            elemento.recibirAtaque(armaActual.potencia())
            armaActual.usar()
        }

    }
}

object mario {
    var valorRecolectado = 0
    var ultimoElementoEncontrado = castillo
    // getter para variables
    method valorRecolectado(){
        return valorRecolectado
    }
    method ultimoElementoEncontrado(){
        return ultimoElementoEncontrado
    }
    
    // setters    
    method incrementarValorRecolectado(cantidad){
        valorRecolectado += cantidad
    }
    method establecerUltimoElementoEncontrado(elemento){
        ultimoElementoEncontrado = elemento
    }
            
    method encontrar(elemento){
        valorRecolectado += elemento.otorgarValor()
        elemento.recibirTrabajo()
        establecerUltimoElementoEncontrado(elemento)
    }

    method esFeliz(){
        return ultimoElementoEncontrado.altura() >= 10 or valorRecolectado >= 50
    }
        
}


        



    