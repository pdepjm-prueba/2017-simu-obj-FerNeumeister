/** Acá el código del simulacro */

class Empleado {
	var rol
	var estamina
	var fuerza
	
	constructor ( _rol, _estamina){
		rol =_rol
		estamina = _estamina
		fuerza = _estamina / 2;
	}
	
	method obtenerFuerza (){
		return fuerza + rol.variacion()
	}
	
	method obtenerEstamina(){
		return estamina
	}
	
	method cambiarRol(_rol){
		rol = _rol
	}
	method obtenerRol(){
		return rol
	}
}

class Ciclope inherits Empleado {
	
	constructor ( _rol, _estamina) = super( _rol, _estamina) {
		estamina = self.obtenerEstamina(_estamina)
	}
	
	method obtenerEstamina(_estamina){
		return _estamina.max(10)
	}

	override method obtenerFuerza(){
		return super() / 2
	}
	
}

class Biclope inherits Empleado{
	
	constructor (_raza, _rol, _estamina) = super( _rol, _estamina) {
	}
}

class Rol {
	var empleado
	constructor
	method tieneHerramientasNecesarias(herramientas){
		return false;
	}
	
	method variacion() = 0
	
	method defenderLaboratorio(){
		
	}
	method arreglarMaquina(){
		
	}
}

class Soldado inherits Rol {
	var danioPorPractica
	constructor (){
		danioPorPractica = 0
	}
	override method variacion(){
		return danioPorPractica;
	}
}

class Obrero inherits Rol {
	const herramientas 
	constructor (_herramientas){
		herramientas =_herramientas
	}
	
	override method tieneHerramientasNecesarias(_herramientas){
		return _herramientas.contains(herramientas);
	}
}

class Mucama inherits Rol {
	
}

class ArreglarMaquina{
	const complejidad
	const heramientasRequeridas
	var arreglado
	
	constructor (_complejidad, _heramientasRequeridas){
		complejidad = _complejidad
		heramientasRequeridas = _heramientasRequeridas
		arreglado = false
	}
	
	method realizar (empleado){
		if (empleado.estamina() > complejidad && empleado.rol().tieneHerramientasNecesarias()){
			arreglado = true
		}
	}
}


