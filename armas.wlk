object ballesta {
    var flechas = 10
    // getter para flechas
    method flechas(){
        return flechas
    }
    
    method potencia(){
        return 4
    }
    method estaCargada(){
        return (flechas >0)
    }
    method usar(){
        // lado izquierdo variable, lado derecho método. Siempre es así esto y por qué? Por la precedencia? Preguntar!
        flechas = (flechas -1).max(0)
    }

  
}

object jabalina {
  const estaCargada = true
  //getter para estaCargada
  method estaCargada(){
        return estaCargada
    }
  method potencia(){
    return 30
  }
  method usar(){
    return not estaCargada
  }

}