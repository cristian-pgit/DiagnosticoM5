package idao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import conexion.SingletonImnot;
import dao.CapacitacionDAO;
import model.Capacitacion;

public class CapacitacionDaoImpl implements CapacitacionDAO{
	
	private Connection conn;
	private Statement stm;
	private ResultSet rs;
	private PreparedStatement st;
	
	@Override
	public Capacitacion getCapacitacionByIdCapacitacion(Integer idCapa) {
		String sql = "SELECT * FROM capacitacion WHERE idCapacitacion = ?;";
		initConnection();
		try 
		{
			conn = SingletonImnot.getConnection();
			stm = conn.createStatement();
			stm.executeQuery(sql);
			rs= stm.getResultSet();
			Capacitacion cap = new Capacitacion();
			while (rs.next()) {
				
				cap.setIdCapacitacion(rs.getInt(1));
				cap.setRutCliente(rs.getInt(2));
				cap.setDia(rs.getString(3));
				cap.setHora(rs.getDate(4));
				cap.setLugar(rs.getString(5));
				cap.setDuracion(rs.getInt(6));
				cap.setCantAsist(rs.getInt(7));
			}
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return null;
	}

	@Override
	public List<Capacitacion> getAllCapacitaciones() {
		String sql = "SELECT * FROM capacitacion;";
		initConnection();
		List<Capacitacion> capacitaciones = null;
		try 
		{
			conn = SingletonImnot.getConnection();
			stm = conn.createStatement();
			stm.executeQuery(sql);
			rs= stm.getResultSet();
			
			capacitaciones = new ArrayList<Capacitacion>();
			while (rs.next()) {
				Capacitacion cap = new Capacitacion();
				cap.setIdCapacitacion(rs.getInt(1));
				cap.setRutCliente(rs.getInt(2));
				cap.setDia(rs.getString(3));
				cap.setHora(rs.getDate(4));
				cap.setLugar(rs.getString(5));
				cap.setDuracion(rs.getInt(6));
				cap.setCantAsist(rs.getInt(7));
				capacitaciones.add(cap);
			}
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} 
			
		return capacitaciones;
		
		
		
	}

	@Override
	public int deleteCapacitacion(Integer idCapa) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateCapacitacion(Capacitacion capacitacion) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void insertCapacitacion(Capacitacion capacitacion) {
		String sql = "INSERT INTO capacitacion VALUES (?);";
		initConnection();
		try 
		{
			conn = SingletonImnot.getConnection();
			st = conn.prepareStatement(sql);
			st.setInt(1, capacitacion.getIdCapacitacion());
			stm.executeUpdate(sql);
			rs= stm.getResultSet();
			
		
			while (rs.next()) {
				Capacitacion cap = new Capacitacion();
				cap.setIdCapacitacion(rs.getInt(1));
				cap.setRutCliente(rs.getInt(2));
				cap.setDia(rs.getString(3));
				cap.setHora(rs.getDate(4));
				cap.setLugar(rs.getString(5));
				cap.setDuracion(rs.getInt(6));
				cap.setCantAsist(rs.getInt(7));
				
			}
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		
	}
	
	private void initConnection() {
		conn = null;
		stm = null;
		rs = null;
		
	}
	

}
