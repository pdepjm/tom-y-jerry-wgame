import wollok.game.*
import personajes.tom

object aleatorio {

	var posicion = game.at(8, 8)

	method posicion() = posicion

	method nuevaPosicion() {
		// calculo coordenadas aleatorias dentro la pantalla
		const x = 0.randomUpTo(game.width())
		const y = 0.randomUpTo(game.height())
		// cambio a nueva posicion
		posicion = game.at(x, y)
	}

}

object cazado {

	method posicion() = tom.position().left(1)

}

