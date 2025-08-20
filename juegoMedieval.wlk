// armas

object ballesta {
    method potencia(){
        return 4
    }
    var cantidadDeFlechas = 10
    // getter para cantidadDeFlechas
    method cantidadDeFlechas(){
        return cantidadDeFlechas
    }
    // settet para cantidadDeFlechas
    method disminuirCantidadDeFlechas(unaCantidad){
        cantidadDeFlechas -= unaCantidad
    }
    
    method estaCargada(){
        return cantidadDeFlechas > 0
    }

    //DELEGAR RESPONSABILIDAD: la ballesta sabe cómo la usan 

    method usar(){
        disminuirCantidadDeFlechas(1)
    }
    

    
}

object jabalina {
    method potencia() {
        return 30
    }
    var carga = 1
    // getter para carga
    method carga(){
        return carga
    }
    // setter para carga
    method incrementarCarga(unValor){
        carga += unValor
    }
    method estaCargada(){
        return carga > 0
    }
    //DELEGAR RESPONSABILIDAD: la ballesta sabe cómo la usan

    method usar(){
        incrementarCarga(-1)
    }
}

// elementos

object castillo {
    method altura(){
        return 20
    }
    var defensa = 150
    
    // getters y setters para las variables
    
    method defensa(){
        return defensa
    }
    
    method cambiarDefensa(unIncremento){
        // unIncremento puede ser positivo o negativo
        defensa += unIncremento
    }
    // DELEGAR RESPONSABILIDAD: el castillo sabe cómo lo atacan, cómo otorgar valor y como recibir un trabajo
    method recibirAtaque(potenciaDelAtaque){
        cambiarDefensa(-potenciaDelAtaque)

    }
    method otorgarValor(){
        return 0.2*defensa()

    }
    method recibirTrabajo(){
        defensa = min([defensa()+20, 200])
    }
}

object aurora {
    method altura(){
        return 1
    }
    var estaViva = true
    // getter para estado
    method estaViva(){
        return estaViva
    }
    // setter para estado
    method cambiarestaViva(trueOrFalse){
        estaViva = trueOrFalse
    }

    // DELEGAR RESPONSABILIDAD: aurora sabe cómo la atacan, cómo otorgar valor y como recibir un trabajo
    method recibirAtaque(potenciaDelAtaque){
        if potenciaDelAtaque >= 10{
            cambiarEstaViva(false)
        }

    }
    method otorgarValor(){
        return 15
    }
    method recibirTrabajo(){
        // método vacío porque aurora no reacciona al recibir un trabajo
    }

}

object tipa {
    var altura = 8
    method incrementarAltura(unidades){
        altura += unidades
    }

    // DELEGAR RESPONSABILIDAD: la tipa sabe como la atacan, cómo otorgar valor y como recibir un trabajo
    method recibirAtaque(potenciaDelAtaque){
        // Este método está vacío porque la tipa no reacciona al ataque.
        }
    
    method otorgarValor(){
        return 2*altura()
    }
    method recibirTrabajo(){
        incrementarAltura(1)
    }
}
