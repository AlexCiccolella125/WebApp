package edu.fau.group3.model;

public class BillTo {
	private int BillToID;
	private String BillToStreet;
	private String BillToCity;
	private String BillToState;
	private int BillToZip;
	private String BillToContact;
	private int BillToPhone;
	
	public BillTo(){
	}
	public BillTo(int BillToID, String BillToStreet, String BillToCity, String BillToState, int BillToZip,
			String BillToContact, int BillToPhone) {
		super();
		this.BillToID = BillToID;
		this.BillToStreet = BillToStreet;
		this.BillToCity = BillToCity;
		this.BillToState = BillToState;
		this.BillToZip = BillToZip;
		this.BillToContact = BillToContact;
		this.BillToPhone = BillToPhone;
	}
	public int getBillToID() {
		return BillToID;
	}
	public void setBillToID(int BillToID) {
		this.BillToID = BillToID;
	}
	public String getBillToStreet() {
		return BillToStreet;
	}
	public void setBillToStreet(String BillToStreet) {
		this.BillToStreet = BillToStreet;
	}
	public String getBillToCity() {
		return BillToCity;
	}
	public void setBillToCity(String BillToCity) {
		this.BillToCity = BillToCity;
	}
	public String getBillToState() {
		return BillToState;
	}
	public void setBillToState(String BillToState) {
		this.BillToState = BillToState;
	}
	public int getBillToZip() {
		return BillToZip;
	}
	public void setBillToZip(int BillToZip) {
		this.BillToZip = BillToZip;
	}
	public String getBillToContact() {
		return BillToContact;
	}
	public void setBillToContact(String BillToContact) {
		this.BillToContact = BillToContact;
	}
	public int getBillToPhone() {
		return BillToPhone;
	}
	public void setBillToPhone(int BillToPhone) {
		this.BillToPhone = BillToPhone;
	}
}
