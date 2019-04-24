package edu.fau.group3.services;

import java.util.List;
import javax.sql.DataSource;
import edu.fau.group3.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.stereotype.Component;

@Component
public class ProductService extends BaseService<Product>{
	
	@Autowired
	public ProductService(DataSource dataSource) {
		super(dataSource);
	}

	@Override
	public List<Product> getAll() {
		String query ="SELECT * from Product";
		return jdbcTemplate.query(query, new ProductMapper());
	}
	
	@Override
	public Product getById(int id){
		String query ="SELECT * FROM Product WHERE ProductID = ?";
		try{
			return jdbcTemplate.queryForObject(query, new Object[] {id}, new ProductMapper());
		}catch (EmptyResultDataAccessException ex){
			return null;
		}
	}	

	@Override
	public Product getByName(String SKU) {
		String query = "SELECT * FROM Product where ProductSKU =?";
		try{
			return jdbcTemplate.queryForObject(query, new Object[] {SKU}, new ProductMapper());
		}catch(EmptyResultDataAccessException ex){
			return null;
		}
	}
		
	@Override
	public List<Product> getSortedList(int id) {
		String query = "SELECT * FROM Product where CollectionID =?";
		try {
			return jdbcTemplate.query(query, new Object[] {id}, new ProductMapper());	
		}catch(EmptyResultDataAccessException ex){
			return null;
		}
	}
	@Override
	public boolean create(Product t) {
		String query = "INSERT INTO Product(ProductName, ProductPrice, ProductDescription, ProductSKU, ProductInventory, ImageListID, CollectionID) value (?,?,?,?,?,?,?)";
		try {
			return jdbcTemplate.update(query, t.getProductName(),t.getProductPrice(),t.getProductDescription(), t.getProductSKU(), t.getProductInventory(), t.getImageListID(), t.getCollectionID()) > 0;
		}catch(EmptyResultDataAccessException ex){
			return false;
		}
	}
	
	@Override
	public boolean update(Product t) {
		String query = "UPDATE Product SET ProductID=?, ProductName=?, ProductPrice=?, ProductDescription=?, ProductSKU=?, ProductInventory=?, ImageListID=?, CollectionID=? WHERE ProductID=?";
		try{
			return jdbcTemplate.update(query, t.getProductID(), t.getProductName(),t.getProductPrice(),t.getProductDescription(), t.getProductSKU(), t.getProductInventory(), t.getImageListID(), t.getCollectionID(), t.getProductID()) > 0;
		}catch(EmptyResultDataAccessException ex){
			return false;
		}
	}
	public boolean DELETE(Product t){
		String query = "DELETE FROM Product WHERE ProductID = ?";
		try{
			return jdbcTemplate.update(query, t.getProductID()) > 0;
		}catch(EmptyResultDataAccessException ex){
			return false;
		}
	}

	
}