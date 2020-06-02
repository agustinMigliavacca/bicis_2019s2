import accesorios.*
import bicis.*
class Deposito {
	var bicis = []
	method nBicis(a) {
		bicis.add(a)
	}
		
	method bicisRapidas() {
		return bicis.filter({b => b.velDeCrucero() > 25 })
	}	
	
	method coleccion() {
		return bicis.map({b => b.marca()}).asSet()
	}
	
	method esNocturno() {
		return 	bicis.all({b => b.tieneLuz()})
	}
	
	method tieneBici(kilos) {
		return bicis.any({b => b.carga() > kilos})
	}	
	
	method masRapida() {
		return bicis.max({b => b.velDeCrucero()}).marca()
	}
	
	method cargaTotal() {
		return bicis.filter({b => b.velDeCrucero() > 170 }).sum({b => b.carga()})
	}
	
	method cantidadBicisSin() {
		return bicis.count({b =>  b.accesorios().isEmpty()})
	}
	
	method bicisCompanieras(bici) {
		return bicis.any({b => b.marca() == bici.marca()})
		and bicis.any({b => (b.largo() - bici.largo())}).max(10)
	}
	
	
}

