package edu.fau.group3.model;

public class Product {
	int ProductID;
	String ProductName;
	Double ProductPrice;
	String ProductDescription;
	String ProductSKU;
	int ProductInventory;
	int ImageListID;
	int CollectionID;
	
	public Product(){
	}
	
	public Product(int productID, String productName, Double productPrice, String productDescription, String productSKU,
			int productInventory, int imageListID, int collectionID) {
		super();
		ProductID = productID;
		ProductName = productName;
		ProductPrice = productPrice;
		ProductDescription = productDescription;
		ProductSKU = productSKU;
		ProductInventory = productInventory;
		ImageListID = imageListID;
		CollectionID = collectionID;
	}

	public int getProductID() {
		return ProductID;
	}

	public void setProductID(int productID) {
		ProductID = productID;
	}

	public String getProductName() {
		return ProductName;
	}

	public void setProductName(String productName) {
		ProductName = productName;
	}

	public Double getProductPrice() {
		return ProductPrice;
	}

	public void setProductPrice(Double productPrice) {
		ProductPrice = productPrice;
	}

	public String getProductDescription() {
		return ProductDescription;
	}

	public void setProductDescription(String productDescription) {
		ProductDescription = productDescription;
	}

	public String getProductSKU() {
		return ProductSKU;
	}

	public void setProductSKU(String productSKU) {
		ProductSKU = productSKU;
	}

	public int getProductInventory() {
		return ProductInventory;
	}

	public void setProductInventory(int productInventory) {
		ProductInventory = productInventory;
	}

	public int getImageListID() {
		return ImageListID;
	}

	public void setImageListID(int imageListID) {
		ImageListID = imageListID;
	}

	public int getCollectionID() {
		return CollectionID;
	}

	public void setCollectionID(int collectionID) {
		CollectionID = collectionID;
	}
}
