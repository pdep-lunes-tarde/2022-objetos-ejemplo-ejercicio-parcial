class Ciclope {
	var estamina
	
	method estamina() = estamina
	
	method comer(fruta) {
		estamina += fruta.estaminaQueRecupera()
	}
}

class Uva {
	method estaminaQueRecupera() = 1
}