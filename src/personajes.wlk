import wollok.game.*
object tom {
	var position = game.at(2,2)
	
	method position() = position
	
	method moverseA(nuevaPosicion){
		position = nuevaPosicion
	}
	
	method image() = "tom.png"
}
