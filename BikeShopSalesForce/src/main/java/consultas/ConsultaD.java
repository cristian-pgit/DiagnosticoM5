package consultas;

public class ConsultaD {

	String consultaD = "SELECT s.last_name, s.first_name, COUNT(o.order_id)"
			+ "FROM staffs s"
			+ "JOIN orders o ON s.store_id = o.store_id"
			+ "where s.store_id = 1"
			+ "GROUP BY s.last_name, s.first_name;";
	
}


