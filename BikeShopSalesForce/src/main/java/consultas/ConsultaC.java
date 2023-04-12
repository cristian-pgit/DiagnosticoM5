package consultas;

public class ConsultaC {

	
	String consultaC = "SELECT store_name, COUNT(order_id)"
			+ "FROM stores"
			+ "JOIN orders o ON s.store_id = o.store_id"
			+ "GROUP BY store_name;";
}
