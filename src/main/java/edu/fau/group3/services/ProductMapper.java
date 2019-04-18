package edu.fau.group3.services;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import edu.fau.group3.model.Product;

public class ProductMapper implements RowMapper<Product>{

	public Product mapRow(ResultSet rs, int rowNum) throws SQLException {
		Product product = new Product();
		product.setProductID(rs.getInt("ProductID"));
		product.setProductName(rs.getString("ProductName"));
		product.setProductPrice(rs.getDouble("ProductPrice"));
		product.setProductDescription(rs.getString("ProductDescription"));
		product.setProductSKU(rs.getString("ProductSKU"));
		product.setProductInventory(rs.getInt("ProductInventory"));
		product.setImageListID(rs.getInt("ImageListID"));
		product.setCollectionID(rs.getInt("CollectionID"));
		return product;
	}
}