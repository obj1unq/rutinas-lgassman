class Rutina {
    method caloriasQuemadas(tiempo){
        return 100 * (tiempo - self.descanso(tiempo)) * self.intensidad()
    }

    method descanso(tiempo)
    method intensidad()

}
class Running inherits Rutina{
    var property  intensidad  
     override method descanso(tiempo){
         return if(tiempo>20){
            5
         }else{
             2
         }
    }
}
class Maraton inherits Running  {
    override method caloriasQuemadas(tiempo){
        return super(tiempo)*2
    }
  
}
class Remo inherits Rutina{
    
   override  method intensidad(){
        return 1.3
    }
    
    override method descanso(tiempo){
        return tiempo / 5 
    }
          
}
class RemoDeCompeticion inherits Remo {
    
    
    override method intensidad(){
        return 1.7
    }
    override method descanso(tiempo){
        return (super(tiempo)-3).max(2)
    }
}