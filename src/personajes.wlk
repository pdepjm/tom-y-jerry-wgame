import wollok.game.*
import movimientos.*

object tom {

	var position = game.at(2, 2)
	var imagen = "tom.png"

	method position() = position

	method moverseA(nuevaPosicion) {
		position = nuevaPosicion
	}

	method image() = imagen

	method perdiste() {
		imagen = "tom-triste.png"
	}

}

object jerry {

	var movimiento = aleatorio

	method position() = movimiento.posicion()

	method image() = "jerry.png"

	method chocasteConTom() {
		movimiento = cazado
	}

}

object spike {

	method image() = "spike.png"

	method position() = game.at(7, 5)

	method chocasteConTom() {
//		terminar el juego
		game.say(jerry, "jaja perdiste gil")
		tom.perdiste()
		game.schedule(5000, { game.stop()})
	}

}

object carpincho {

	method image() = "carpincho.png"

	method position() = game.at(1, 6)

}

