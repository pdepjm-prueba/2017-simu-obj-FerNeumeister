/** Acá el código del simulacro */
class Ciclope {
	var estamina
	var rol
	
	constructor (_estamina, _rol) {
		estamina = self.obtenerEstamina(_estamina)
		rol = _rol
	}
	
	method obtenerEstamina(_estamina){
		return _estamina.max(10)
	}
	
	method cambiarRol()
	method obtenerRol()
	method calcularFuerza()
}

class Biclope{
	var estamina
	var rol
	
	constructor (_estamina, _rol) {
		estamina = _estamina
		rol = _rol
	}
	
	method cambiarRol()
	method obtenerRol()
	method calcularFuerza()
}

class Soldado {
	var arma
	constructor	(_arma){
		arma = _arma
	}
}

class Obrero {
	const herramientas 
	constructor (_herramientas){
		herramientas =_herramientas
	}
}

class Mucama {
	
}

class ArreglarMaquina{
	const complejidad
	const heramientasRequeridas
	
	constructor (_complejidad, _heramientasRequeridas){
		complejidad = _complejidad
		heramientasRequeridas = _heramientasRequeridas
	}
	
	
}


