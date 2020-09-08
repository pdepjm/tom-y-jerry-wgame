import wollok.game.*

object tom {
	var position = game.at(2,2)
	
	method position() = position
	
	method moverseA(nuevaPosicion){
		position = nuevaPosicion
	}
	
	method image() = "tom.png"
}

object jerry {
	
	var movimiento = aleatorio
	
	method position() = movimiento.posicion() 
	
	method image() = "jerry.png"
	
	method chocasteConTom(){
		movimiento = cazado
	}	
}

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


