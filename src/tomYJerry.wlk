import wollok.game.*
import personajes.*
import movimientos.*

object tomYJerry {

	method iniciar() {
		self.configurarJuego()
		self.agregarPersonajes()
		self.configurarTeclas()
		self.configurarAcciones()
		game.start()
	}

	method configurarJuego() {
		game.title("Tom y Jerry")
		game.width(10)
		game.height(10)
	}

	method agregarPersonajes() {
		game.addVisual(tom)
		game.addVisual(jerry)
		game.addVisual(spike)
		game.addVisual(carpincho)
	}

	method configurarTeclas() {
		keyboard.up().onPressDo({ tom.moverseA(tom.position().up(1))})
		keyboard.down().onPressDo({ tom.moverseA(tom.position().down(1))})
		keyboard.left().onPressDo({ tom.moverseA(tom.position().left(1))})
		keyboard.right().onPressDo({ tom.moverseA(tom.position().right(1))})
	}

	method configurarAcciones() {
		game.onTick(1000, "mover aleatoriamente", { aleatorio.nuevaPosicion()})
		game.onCollideDo(tom, { visualColisionado => visualColisionado.chocasteConTom()})
	}

}

