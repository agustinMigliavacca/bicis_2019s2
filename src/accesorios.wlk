object farolito {
	
	method peso() {
		return 0.5
	}	
	
	method carga() {
		return 0
	}
	
	method esLuminoso() {
		return true
	}
	
}

object canasto {
	var property volumen
	
	method peso() {
		return volumen / 10
	}
	
	method carga() {
		return volumen * 2
	}
	
	method esLuminoso() {
		return false
	}
}

object morral {
	var property largo
	var property ojoDeGato
	
	method peso() {
		return 1.2 
	}
	
	method carga() {
		return largo / 3
	}
	
	method esLuminoso() {
		return false
	}
}


/*
 se deberia agragar nuevos objetos con los tipos de accesorios y que
 sean polimofircos con los otros objetos q entiendan los mismos mensajes
  
 */
