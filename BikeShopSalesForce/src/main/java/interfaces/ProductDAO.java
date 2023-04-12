package interfaces;

import java.util.List;

import modelos.Products;



public interface ProductDAO {

	
	public Products getProductsById(int productId);
	public List<Products> getAllProducts();
	public int deleteProducts(Integer productId);
	public void updateProducts(Products product, int productId);
	public void crearProducts(Products product);
}
