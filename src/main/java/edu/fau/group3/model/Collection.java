package edu.fau.group3.model;

public class Collection {
	private int CollectionID;
	private String CollectionName;
	private String CollectionThumbnail;

	public Collection(){	
	}
	
	public Collection(int collectionID, String collectionName, String collectionThumbnail) {
		super();
		CollectionID = collectionID;
		CollectionName = collectionName;
		CollectionThumbnail = collectionThumbnail;
	}
	
	public int getCollectionID() {
		return CollectionID;
	}
	
	public void setCollectionID(int collectionID) {
		CollectionID = collectionID;
	}
	
	public String getCollectionName() {
		return CollectionName;
	}

	public void setCollectionName(String collectionName) {
		CollectionName = collectionName;
	}
	public String getCollectionThumbnail() {
		return CollectionThumbnail;
	}

	public void setCollectionThumbnail(String collectionThumbnail) {
		CollectionThumbnail = collectionThumbnail;
	}
	
}
	