import wollok.game.*
import personajes.tom

object aleatorio { 
	var posicion = game.at(8,8)
	
	method posicion() = posicion
	
	method nuevaPosicion() {
		//		calculo posicion aleatoria en la pantalla
		const ancho = 0.randomUpTo(game.width())
		const alto = 0.randomUpTo(game.height())
		//		cambio a nueva posicion
		posicion =  game.at(ancho,alto)
	}
}


object cazado {
	method posicion() = tom.position().left(1)
}
