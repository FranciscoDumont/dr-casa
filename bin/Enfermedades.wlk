import Personas.*

class EnfermedadInfecciosa {
	var cantidadCelulasAmenazadas
	
	constructor (celulas){
		cantidadCelulasAmenazadas = celulas
	}
	
	method efecto(persona){
		persona.aumentarTemperatura( persona.temperatura()*0.001 )
	}
	
	method reproducirse(){
		cantidadCelulasAmenazadas *= 2
	}
	
	method esAgresiva(persona){
		return  cantidadCelulasAmenazadas > persona.celulas()*0.1
	}
	
}


class EnfermedadAutoinmune{
	var cantidadCelulasAmenazadas
	var diasTranscurridos = 0
	
	constructor (celulas){
		cantidadCelulasAmenazadas = celulas
	}
	
	method efecto(persona){
		persona.destruirCelulas(cantidadCelulasAmenazadas)
		diasTranscurridos += 1 
	}
	
	method esAgresiva(persona){
		return  diasTranscurridos > 30
	}
	
}