package consultas;

public class ConsultaB {
	
	
	String consultaB = "SELECT customer_id, last_name, first_name, phone, email, street, city, state, zip_code FROM customers \r\n"
			+ "WHERE email like '%%yahoo%%' and phone is null";

}
