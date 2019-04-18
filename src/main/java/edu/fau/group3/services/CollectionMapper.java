package edu.fau.group3.services;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import edu.fau.group3.model.Collection;

public class CollectionMapper implements RowMapper<Collection>{

	public Collection mapRow(ResultSet rs, int rowNum) throws SQLException {
		Collection collection = new Collection();
		collection.setCollectionID(rs.getInt("CollectionID"));
		collection.setCollectionThumbnail(rs.getString("CollectionThumbnail"));
		return collection;
	}
}