import wollok.game.*

object tom {
	var position = game.at(2,2)
	var imagen = "tom.png"
	method position() = position
	
	method moverseA(nuevaPosicion){
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

object spike { 
	method image() = "spike.png"
	
	method position() = game.at(7,5)
	
	method chocasteConTom() {
//		terminar el juego
		game.say(jerry,"jaja perdiste gil")
		tom.perdiste()
		game.schedule(5000, { game.stop() })
	}

}

object carpincho {
	method image() = "carpincho.png"
	
	method position() = game.at (1,6)
}

