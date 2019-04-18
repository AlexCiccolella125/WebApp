package edu.fau.group3.services;

import java.util.List;
import javax.sql.DataSource;
import edu.fau.group3.model.BillTo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Component;

@Component
public class BillToService extends BaseService<BillTo>{
	
	@Autowired
	public BillToService(DataSource dataSource) {
		super(dataSource);
	}

	@Override
	public List<BillTo> getAll() {
		String query ="SELECT * from BillTo";
		return jdbcTemplate.query(query, new BillToMapper());
	}
	
	@Override
	public BillTo getById(int id){
		String query ="SELECT * FROM BillTo WHERE BillToID = ?";
		try{
		return jdbcTemplate.queryForObject(query, new Object[] {id}, new BillToMapper());
		}catch (EmptyResultDataAccessException ex){
			return null;
		}
	}	

	@Override
	public BillTo getByName(String name) {
		return null;
	}
		
	@Override
	public List<BillTo> getSortedList(int id) {
		return null;
	}
	@Override
	public boolean create(BillTo t) {
		String query = "INSERT INTO BillTo(BillToID, BillToStreet, BillToCity, BillToState, BillToZip, BillToContact, BillToPhone) value (?,?,?,?,?,?,?,?)";
		return jdbcTemplate.update(query, t.getBillToID(), t.getBillToStreet(),t.getBillToCity(),t.getBillToState(), t.getBillToZip(), t.getBillToContact(), t.getBillToPhone()) > 0;
	}
	
	@Override
	public boolean update(BillTo t) {
		String query = "UPDATE BillTo SET BillToID=?, BillToStreet=?, BillToCity=?, BillToState=?, BillToZip=?, BillToContact=?, BillToPhone=?, WHERE BillToID=?";
		return jdbcTemplate.update(query, t.getBillToID(), t.getBillToStreet(),t.getBillToCity(),t.getBillToState(), t.getBillToZip(), t.getBillToContact(), t.getBillToPhone()) > 0;
	}
	public boolean DELETE(BillTo t){
		String query = "DELETE FROM BillTo WHERE BillToID = ?";
		return jdbcTemplate.update(query, t.getBillToID()) > 0;
	}

	
}