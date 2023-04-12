package interfaces;

import java.util.List;


public interface OrderDAO {
	
	public Orders getCustomerById(int customerId);
	public List<Orders> getAllCustomers();
	public int deleteOrders(Integer customerId);
	public void updateOrders(Orders customer, int customerId);
	public void crearOrders(Orders customer);

}
