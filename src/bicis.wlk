import accesorios.*
class Bicis {
	var property largo
	var property marca
	var  accesorios = []
	var property rodado
	method nAccesorio(n) {
		accesorios.add(n)
	}
	method altura() {
		return rodado * 2.5 + 15
	}
	method accesorios() {
		return accesorios
	}
	method velDeCrucero() {
		if(largo > 120 ) {
		return 	rodado + 6
		}
		else { return rodado + 2 }
	}
	
	method carga() {
		return  accesorios.sum({c => c.carga()})
	}
	
	method peso() {
		return rodado / 2 + accesorios.sum({c => c.peso()})
	}
	
	method tieneLuz() {
		return accesorios.any({c => c.esLuminoso()})
	} 
	
	method cAccesorios() {
		return accesorios.filter({c => c.peso() < 1}).size()
	}
	
	

} 