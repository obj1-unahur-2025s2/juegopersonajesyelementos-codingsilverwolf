object castillo{
    var defensa = 150
    // getters
    method altura(){
        return 20
    }
    method defensa(){
        return defensa
    }
    method recibirAtaque(potencia){
        defensa = (defensa - potencia).max(0)
    }
    method otorgarValor(){
        return 0.2*defensa
    }
    method recibirTrabajo(){
        defensa = (defensa+20).min(200)
    }

}

object aurora {
    var altura = 1
    var estaViva = true
    method altura(){
        return altura
    }
    method estaViva(){
        return estaViva
    }
    // métodos para floki
    method recibirAtaque(potencia){
        if (potencia >= 10) {
            estaViva = false
        }
    }
    // métodos para mario
    method otorgarValor(){
        return 15
    }
    method recibirTrabajo(){}

  
}

object tipa {
    var altura = 8
    method altura(){
        return altura
    }
    method recibirAtaque(potencia){}
     // métodos para mario
    method otorgarValor(){
        return 2*altura
    }
    method recibirTrabajo(){
        altura += 1
    }
  
}