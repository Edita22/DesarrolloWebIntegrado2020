
public class Automovil {
// atributos o características
	String marca;
	int modelo;
	int precio;
	
	boolean estado= false;
	// Definicion de constructor
	
	public Automovil() {
		System.out.println(" Se creo un objeto de tipo automóvil");
	}
	
	//Métodos o acciones
	
	public void encencer() {
		if(estado ==true) {
			System.out.println("El automóvil ya esta encendido");
		}else {
		
		System.out.println("El automóvil ha encendido");
		estado= true;
		}
		
	}
	
	public void apagar() {
		if( estado= true) {
			System.out.println("El automóvil se apago");
			estado= false;
		}else {
			System.out.println("El automóvil ya esta apagado");
		}
		
	}
	public void avanzar() {
		if(estado == true) {
			System.out.println("El automóvil esta avanzando");
		}else {
			
		
		System.out.println("El automóvil no puede avanzar apagado");
}
}
}
