package interfaces;

import java.util.List;

import modelos.Store;


public interface StoreDAO {
	
	public Store getStoreById(int storeId);
	public List<Store> getAllStores();
	public int deleteStore(Integer storeId);
	public void updateStore(Store store, int storeId);
	public void crearStore(Store store);

}
