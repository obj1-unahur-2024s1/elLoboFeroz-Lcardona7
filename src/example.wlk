object feroz{
	
	var peso = 10
	
	method estaSaludable() = peso.between(20, 150)
	
	method aumentarPeso(kg) {
		peso += kg
	}
	
		method disminuirPeso(kg) {
		  
		  if (peso - kg >= 0) {
            peso -= kg
        } else {
            peso = 0
        }
	}
	
	method crisis(){
		peso = 10
	}

	method comer(comida){
		
		peso += (comida.peso() * 0.1)
	}
	
	method correr(){
		peso =- 1
	}
	
	method soplar(casa, chanchos){
		self.disminuirPeso(casa.resistencia())
		self.disminuirPeso(casa.pesoChancho(chanchos))
		
	}
	
	method comerChanchos(chanchos){
		
		self.comer(chanchos * 20)
	}

}

object caperucita{
	
	var canasta = 1.2
	const kg = 60
	
	method masPesoCanasta(manzana){
		
		canasta += (manzana * 0.2)
	}
	
	method menosPesoCanasta(manzana){
		
		canasta -= (manzana * 0.2)
	}
	
	method peso(){
		
		 return kg + canasta
		
	}
}

object abuelita{
	
	method peso(){
		return 50
	}
}

object cazador{
	
	const mochila = 40
	const kg = 120
	
	method peso(){
		
		return kg + mochila
	}
}



object casaPaja{
	
	method resistencia() = 0
	method pesoChancho(chanchos){
		return chanchos * 20
	}
	
}
object casaMadera{
	
	method resistencia() = 5
	method pesoChancho(chanchos){
		return chanchos * 20
	}
}

object casaLadrillo{
	
	method resistencia() = 2 * 100
	method pesoChancho(chanchos){
		return chanchos * 20
	}
}
