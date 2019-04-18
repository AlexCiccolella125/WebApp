package edu.fau.group3.model;

public class ShipTo {
	private int ShipToID;
	private String ShipToStreet;
	private String ShipToCity;
	private String ShipToState;
	private int ShipToZip;
	private String ShipToContact;
	private int ShipToPhone;
	
	public ShipTo(){
	}
	public ShipTo(int shipToID, String shipToStreet, String shipToCity, String shipToState, int shipToZip,
			String shipToContact, int shipToPhone) {
		super();
		ShipToID = shipToID;
		ShipToStreet = shipToStreet;
		ShipToCity = shipToCity;
		ShipToState = shipToState;
		ShipToZip = shipToZip;
		ShipToContact = shipToContact;
		ShipToPhone = shipToPhone;
	}
	public int getShipToID() {
		return ShipToID;
	}
	public void setShipToID(int shipToID) {
		ShipToID = shipToID;
	}
	public String getShipToStreet() {
		return ShipToStreet;
	}
	public void setShipToStreet(String shipToStreet) {
		ShipToStreet = shipToStreet;
	}
	public String getShipToCity() {
		return ShipToCity;
	}
	public void setShipToCity(String shipToCity) {
		ShipToCity = shipToCity;
	}
	public String getShipToState() {
		return ShipToState;
	}
	public void setShipToState(String shipToState) {
		ShipToState = shipToState;
	}
	public int getShipToZip() {
		return ShipToZip;
	}
	public void setShipToZip(int shipToZip) {
		ShipToZip = shipToZip;
	}
	public String getShipToContact() {
		return ShipToContact;
	}
	public void setShipToContact(String shipToContact) {
		ShipToContact = shipToContact;
	}
	public int getShipToPhone() {
		return ShipToPhone;
	}
	public void setShipToPhone(int shipToPhone) {
		ShipToPhone = shipToPhone;
	}
}
