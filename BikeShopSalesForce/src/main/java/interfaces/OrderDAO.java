package interfaces;

import java.util.List;

import modelos.Orders;


public interface OrderDAO {
	
	public Orders getOrdersById(int orderId);
	public List<Orders> getAllOrders();
	public int deleteOrders(Integer orderId);
	public void updateOrders(Orders order, int orderId);
	public void crearOrders(Orders order);

}
