package edu.fau.group3.services;

import java.util.List;
import javax.sql.DataSource;
import edu.fau.group3.model.ImageList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Component;

@Component
public class ImageListService extends BaseService<ImageList>{
	
	@Autowired
	public ImageListService(DataSource dataSource) {
		super(dataSource);
	}

	@Override
	public List<ImageList> getAll() {
		String query ="SELECT * from ImageList";
		return jdbcTemplate.query(query, new ImageListMapper());
	}
	
	@Override
	public ImageList getById(int id){
		String query ="SELECT * FROM ImageList WHERE ImageListID = ?";
		try{
		return jdbcTemplate.queryForObject(query, new Object[] {id}, new ImageListMapper());
		}catch (EmptyResultDataAccessException ex){
				return null;
		}
	}	

	@Override
	public ImageList getByName(String name) {
		return null;
	}
	
	@Override
	public boolean create(ImageList t) {
		String query = "INSERT INTO ImageList(ImageListID, Thumbnail, Image1, Image2,Image3,Image4) value (?,?,?,?,?,?)";
		return jdbcTemplate.update(query, t.getImageListID(), t.getThumbnail(), t.getImage1(), t.getImage2(), t.getImage3(), t.getImage4()) > 0;
	}
	
	@Override
	public boolean update(ImageList t) {
		String query = "UPDATE ImageList SET ImageListID=?, Thumbnail=?, Image1=?, Image2=?, Image3=?, Image4=?, WHERE ImageListID=?";
		return jdbcTemplate.update(query, t.getImageListID(), t.getThumbnail(), t.getImage1(), t.getImage2(), t.getImage3(), t.getImage4(), t.getImageListID()) > 0;
	}
	@Override
	public boolean DELETE(ImageList t){
		String query = "DELETE FROM ImageList WHERE ImageListID = ?";
		return jdbcTemplate.update(query, t.getImageListID()) > 0;
	}

	@Override
	public List<ImageList> getSortedList(int id) {
		// TODO Auto-generated method stub
		return null;
	}
}

