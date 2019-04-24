package edu.fau.group3.services;

import java.util.List;
import javax.sql.DataSource;
import edu.fau.group3.model.Collection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Component;

@Component
public class CollectionService extends BaseService<Collection>{
	
	@Autowired
	public CollectionService(DataSource dataSource) {
		super(dataSource);
	}

	@Override
	public List<Collection> getAll() {
		String query ="SELECT * from Collection";
		return jdbcTemplate.query(query, new CollectionMapper());
	}
	
	@Override
	public Collection getById(int id){
		String query ="SELECT * FROM Collection WHERE CollectionID = ?";
		try{
		return jdbcTemplate.queryForObject(query, new Object[] {id}, new CollectionMapper());
		}catch (EmptyResultDataAccessException ex){
				return null;
		}
	}	

	@Override
	public Collection getByName(String name) {
		String query = "SELECT * FROM Collection where CollectionName =?";
		try{
			return jdbcTemplate.queryForObject(query, new Object[] {name}, new CollectionMapper());
		}catch(EmptyResultDataAccessException ex){
			return null;
		}
	}
		
	@Override
	public boolean create(Collection t) {
		String query = "INSERT INTO Collection(CollectionID, CollectionName, CollectionThumbnail) value (?,?,?)";
		return jdbcTemplate.update(query, t.getCollectionID(), t.getCollectionName(), t.getCollectionThumbnail()) > 0;
	}
	
	@Override
	public boolean update(Collection t) {
		String query = "UPDATE Collection SET CollectionID=?, CollectionName=?, CollectionThumbnail=? WHERE CollectionID=?";
		try{
			return jdbcTemplate.update(query, t.getCollectionID(), t.getCollectionName(), t.getCollectionThumbnail(), t.getCollectionID()) > 0;
		}catch(EmptyResultDataAccessException ex){
			return false;
	}
}
	
	public boolean DELETE(Collection t){
		String query = "DELETE FROM Collection WHERE CollectionID = ?";
		return jdbcTemplate.update(query, t.getCollectionID()) > 0;
	}

	@Override
	public List<Collection> getSortedList(int id) {
		// TODO Auto-generated method stub
		return null;
	}
}