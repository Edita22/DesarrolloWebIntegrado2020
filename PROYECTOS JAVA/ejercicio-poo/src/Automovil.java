
public class Automovil {
// atributos o caracter�sticas
	String marca;
	int modelo;
	int precio;
	
	boolean estado= false;
	// Definicion de constructor
	
	public Automovil() {
		System.out.println(" Se creo un objeto de tipo autom�vil");
	}
	
	//M�todos o acciones
	
	public void encencer() {
		if(estado ==true) {
			System.out.println("El autom�vil ya esta encendido");
		}else {
		
		System.out.println("El autom�vil ha encendido");
		estado= true;
		}
		
	}
	
	public void apagar() {
		if( estado= true) {
			System.out.println("El autom�vil se apago");
			estado= false;
		}else {
			System.out.println("El autom�vil ya esta apagado");
		}
		
	}
	public void avanzar() {
		if(estado == true) {
			System.out.println("El autom�vil esta avanzando");
		}else {
			
		
		System.out.println("El autom�vil no puede avanzar apagado");
}
}
}
