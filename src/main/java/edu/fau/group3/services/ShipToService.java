package edu.fau.group3.services;

import java.util.List;
import javax.sql.DataSource;
import edu.fau.group3.model.ShipTo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Component;

@Component
public class ShipToService extends BaseService<ShipTo>{
	
	@Autowired
	public ShipToService(DataSource dataSource) {
		super(dataSource);
	}

	@Override
	public List<ShipTo> getAll() {
		String query ="SELECT * from ShipTo";
		return jdbcTemplate.query(query, new ShipToMapper());
	}
	
	@Override
	public ShipTo getById(int id){
		String query ="SELECT * FROM ShipTo WHERE ShipToID = ?";
		try{
		return jdbcTemplate.queryForObject(query, new Object[] {id}, new ShipToMapper());
		}catch (EmptyResultDataAccessException ex){
			return null;
		}
	}	

	@Override
	public ShipTo getByName(String name) {
		return null;
	}
		
	@Override
	public List<ShipTo> getSortedList(int id) {
		return null;
	}
	@Override
	public boolean create(ShipTo t) {
		String query = "INSERT INTO ShipTo(ShipToID, ShipToStreet, ShipToCity, ShipToState, ShipToZip, ShipToContact, ShipToPhone) value (?,?,?,?,?,?,?,?)";
		return jdbcTemplate.update(query, t.getShipToID(), t.getShipToStreet(),t.getShipToCity(),t.getShipToState(), t.getShipToZip(), t.getShipToContact(), t.getShipToPhone()) > 0;
	}
	
	@Override
	public boolean update(ShipTo t) {
		String query = "UPDATE ShipTo SET ShipToID=?, ShipToStreet=?, ShipToCity=?, ShipToState=?, ShipToZip=?, ShipToContact=?, ShipToPhone=?, WHERE ShipToID=?";
		return jdbcTemplate.update(query, t.getShipToID(), t.getShipToStreet(),t.getShipToCity(),t.getShipToState(), t.getShipToZip(), t.getShipToContact(), t.getShipToPhone()) > 0;
	}
	public boolean DELETE(ShipTo t){
		String query = "DELETE FROM ShipTo WHERE ShipToID = ?";
		return jdbcTemplate.update(query, t.getShipToID()) > 0;
	}

	
}