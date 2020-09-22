package conectorBD;
import java.sql.Connection;

public class prueba {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		try{
			Connection  con=MySQLConexion.getConexion() ;
			System.out.println("CONECTADO CON LA BD");
		}catch(Exception e){
			System.out.println("ERROR");
		}

	}

}
