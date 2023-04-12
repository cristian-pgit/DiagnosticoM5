package consultas;

public class ConsultasCreacion {
	
	
	String creacionTiendaBaldwin = "INSERT INTO stores (store_id, store_name, phone, email, street, city, state, zip_code)"
			+ "+ VALUES (1, 'Baldwin', 12341234, 'baldwinst@bikestore.cl', 'Baldwin St. 303', 'NY', 'NY', 11223);";
	
	String creacionTiendaStaCruz = "INSERT INTO stores (store_id, store_name, phone, email, street, city, state, zip_code)"
			+ "VALUES (2, 'Santa Cruz Bikes', 12341245, 'stcruzbikes@bikestore.cl', 'Sta. Cruz 102', 'Santa Cruz', 'CA', 95060);";
	
	String creacionTiendaRow = "INSERT INTO stores (store_id, store_name, phone, email, street, city, state, zip_code)"
			+ "VALUES (3, 'Rowlett Bikes', 1234167, 'rowlettbikes@bikestore.cl', 'Rowlett 402', 'Rowlett', 'TX', 10000);";
	
	String insertCustomers = "INSERT INTO customers (customer_id,first_name,last_name,phone,email,street,city,state,zip_code)"
			+ "VALUES \r\n"
			+ "(1, 'Alex', 'Troncoso', 123444555, 'alex.troncoso@gmail.com', 'Simepre Viva N° 102', 'NY', 'NY', 10001),"
			+ "(2, 'Barbara', 'Mori', , 'barbara.mori@yahoocom', 'Simepre Viva N° 103', 'NY', 'NY', 10001),"
			+ "(3, 'Winston', 'Churchill', 123444557, 'w.church@gmail.com', 'Simepre Viva N° 104', 'NY', 'NY', 10001),"
			+ "(4, 'Pedro', 'Madrigal', , 'p.madrigal@yahoo.com', 'Simepre Viva N° 105', 'NY', 'NY', 10001),"
			+ "(5, 'Isabel', 'Pantoja', 123444559, 'isa.pantoja@gmail.com', 'Simepre Viva N° 106', 'NY', 'NY', 10001),"
			+ "(6, 'Tulio', 'Triviño', , 'tulio.trivino@yahoo.com', 'Simepre Viva N° 107', 'NY', 'NY', 10001),"
			+ "(7, 'Maria', 'Mercedez', 123444561, 'maria.mercedez@gmail.com', 'Simepre Viva N° 108', 'NY', 'NY', 10001),"
			+ "(8, 'Marimar', 'Perez', 123444562, 'la_costeñita@gmail.com', 'Simepre Viva N° 109', 'NY', 'NY', 10001),"
			+ "(9, 'Maria', 'Hernandez', 123444555, 'la_del_barrio@gmail.com', 'Simepre Viva N° 110', 'NY', 'NY', 10001);";
	
	String creacionOrdenes = "INSERT INTO orders (order_id,customer_id,order_status,order_date,required_date,shipped_date,store_id,staff_id)"
			+ "VALUES"
			+ "(1, 1, 'activo', '2023/02/18', '2023/03/01', '2023/03/05', 1, 1),"
			+ "(2, 2, 'activo', '2023/02/18', '2023/03/01', '2023/03/05', 1, 2),"
			+ "(3, 7, 'activo', '2023/02/19', '2023/03/01', '2023/03/05', 1, 3),"
			+ "(4, 8, 'activo', '2023/02/20', '2023/03/02', '2023/03/06', 1, 1),"
			+ "(5, 5, 'activo', '2023/02/20', '2023/03/02', '2023/03/06', 1, 2),"
			+ "(6, 3, 'activo', '2023/02/20', '2023/03/02', '2023/03/06', 1, 1),"
			+ "(7, 2, 'activo', '2023/02/21', '2023/03/03', '2023/03/07', 1, 2),"
			+ "(8, 1, 'activo', '2023/02/21', '2023/03/03', '2023/03/07', 1, 1),"
			+ "(9, 4, 'activo', '2023/02/21', '2023/03/03', '2023/03/07', 1, 3);"
			+ "\r\n"
			+ "INSERT INTO orders (order_id,customer_id,order_status,order_date,required_date,shipped_date,store_id,staff_id)"
			+ "VALUES"
			+ "(10, 1, 'activo', '2023/02/18', '2023/03/01', '2023/03/05', 2, 1),"
			+ "(11, 2, 'activo', '2023/02/18', '2023/03/01', '2023/03/05', 2, 2),"
			+ "(12, 7, 'activo', '2023/02/19', '2023/03/01', '2023/03/05', 2, 3),"
			+ "(13, 8, 'activo', '2023/02/20', '2023/03/02', '2023/03/06', 2, 1),"
			+ "(14, 5, 'activo', '2023/02/20', '2023/03/02', '2023/03/06', 2, 2),"
			+ "(15, 3, 'activo', '2023/02/20', '2023/03/02', '2023/03/06', 2, 1);"
			+ "INSERT INTO orders (order_id,customer_id,order_status,order_date,required_date,shipped_date,store_id,staff_id)"
			+ "VALUES"
			+ "(16, 1, 'activo', '2023/02/18', '2023/03/01', '2023/03/05', 3, 1),"
			+ "(17, 2, 'activo', '2023/02/18', '2023/03/01', '2023/03/05', 3, 2),"
			+ "(18, 7, 'activo', '2023/02/19', '2023/03/01', '2023/03/05', 3, 3),"
			+ "(19, 8, 'activo', '2023/02/20', '2023/03/02', '2023/03/06', 3, 1),"
			+ "(20, 5, 'activo', '2023/02/20', '2023/03/02', '2023/03/06', 3, 2);";
	
	

}
