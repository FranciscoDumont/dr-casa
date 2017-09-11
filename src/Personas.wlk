import Enfermedades.*

class Persona {
	var enfermedades = #{}
	var temperatura 
	var celulas
	
	constructor(temperaturaNormal,celulasIniciales){
		temperatura = temperaturaNormal
		celulas = celulasIniciales
	}
	
	method pasarUnDia(){
		enfermedades.forEach({enfermedad => enfermedad.efecto(self) })
	}
	
	method aumentarTemperatura(cantidad){
		temperatura = 45.min(temperatura+cantidad)
	}
	
	method destruirCelulas(cantidad){
		celulas -= cantidad
	}
	
	method contraerEnfermedad(enfermedad){
		enfermedades.add(enfermedad)
	}

}
