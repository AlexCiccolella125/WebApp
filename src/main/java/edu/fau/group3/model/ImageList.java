package edu.fau.group3.model;

public class ImageList {
	private int ImageListID;
	private String Thumbnail;
	private String Image1;
	private String Image2;
	private String Image3;
	private String Image4;
	
	public ImageList(){	
	}
	
	public ImageList(int ImageListID, String Thumbnail, String Image1, String  Image2, String Image3, String Image4){
	super();
	this.ImageListID = ImageListID;
	this.Thumbnail = Thumbnail;
	this.Image1 = Image1;
	this.Image2 = Image2;
	this.Image3 = Image3;
	this.Image4 = Image4;
	}

	public int getImageListID() {
		return ImageListID;
	}

	public void setImageListID(int imageListID) {
		ImageListID = imageListID;
	}

	public String getThumbnail() {
		return Thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		Thumbnail = thumbnail;
	}

	public String getImage1() {
		return Image1;
	}

	public void setImage1(String image1) {
		Image1 = image1;
	}

	public String getImage2() {
		return Image2;
	}

	public void setImage2(String image2) {
		Image2 = image2;
	}

	public String getImage3() {
		return Image3;
	}

	public void setImage3(String image3) {
		Image3 = image3;
	}

	public String getImage4() {
		return Image4;
	}

	public void setImage4(String image4) {
		Image4 = image4;
	}
}


