package interfaces;

import java.util.List;

import modelos.Customer;


public interface CustomerDAO {
	
	public Customer getCustomerById(int customerId);
	public List<Customer> getAllCustomers();
	public int deleteCustomer(Integer customerId);
	public void updateCustomer(Customer customer, int customerId);
	public void crearCustomer(Customer customer);

}
