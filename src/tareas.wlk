class ArreglarMaquina {
	const complejidadDeLaMaquina
	
	method dificultadPara(_empleado) = complejidadDeLaMaquina * 2
}

class DefenderSector {
	const gradoDeAmenaza
	
	method gradoDeAmenaza() = gradoDeAmenaza
	
	method dificultadPara(empleado) {
		return empleado.dificultadDeDefenderUnSector(self)
	}
}

class LimpiarSector {
	method dificultadPara(_empleado) = tareasDeLimpieza.dificultad()
}

object tareasDeLimpieza {
	var dificultad = 10
	
	method dificultad() = dificultad

	method configurarDificultad(nuevaDificultad) {
		dificultad = nuevaDificultad
	}
}
