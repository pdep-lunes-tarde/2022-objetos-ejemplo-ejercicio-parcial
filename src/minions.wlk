class Empleado {
	var estamina = 0
	const tareasRealizadas = []

	method estamina() = estamina
	
	method experiencia() =
		tareasRealizadas.sum { tarea =>
			tarea.dificultadPara(self)
		} * tareasRealizadas.size()
	
	method comer(fruta) {
		estamina = self.estaminaResultanteTrasComer(fruta)
	}
	
	method realizarTarea(unaTarea) {
		tareasRealizadas.add(unaTarea)
	}

	method estaminaResultanteTrasComer(fruta) {
		return estamina + fruta.estaminaQueRecupera()
	}
}

class Ciclope inherits Empleado {
	method dificultadDeDefenderUnSector(defenderSector) =
		defenderSector.gradoDeAmenaza() * 2
}

class Biclope inherits Empleado {
	method limiteDeEstamina() = 10
	
	method dificultadDeDefenderUnSector(defenderSector) =
		defenderSector.gradoDeAmenaza()

	override method estaminaResultanteTrasComer(fruta) {
		return super(fruta).min(self.limiteDeEstamina())
	}
}

object uva {
	method estaminaQueRecupera() = 1
}

object manzana {
	method estaminaQueRecupera() = 5
}

object banana {
	method estaminaQueRecupera() = 10
}
