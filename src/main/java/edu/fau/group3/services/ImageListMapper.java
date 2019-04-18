package edu.fau.group3.services;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import edu.fau.group3.model.ImageList;

public class ImageListMapper implements RowMapper<ImageList>{

	public ImageList mapRow(ResultSet rs, int rowNum) throws SQLException {
		ImageList Images = new ImageList();
		Images.setImageListID(rs.getInt("ImageListID"));
		Images.setThumbnail(rs.getString("Thumbnail"));
		Images.setImage1(rs.getString("Image1"));
		Images.setImage2(rs.getString("Image2"));
		Images.setImage3(rs.getString("Image3"));
		Images.setImage4(rs.getString("Image4"));
		return Images;
	}
}