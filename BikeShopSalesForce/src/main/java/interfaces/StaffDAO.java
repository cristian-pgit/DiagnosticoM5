package interfaces;

import java.util.List;

import modelos.Staff;


public interface StaffDAO {
	
	public Staff getStaffById(int staffId);
	public List<Staff> getAllStaff();
	public int deleteStaff(Integer staffId);
	public void updateStaff(Staff staff, int staffId);
	public void crearStaff(Staff staff);

}
