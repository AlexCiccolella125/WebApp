package edu.fau.group3.util;

import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import edu.fau.group3.configuration.SpringJdbcConfig;
import edu.fau.group3.model.User;
import edu.fau.group3.model.ImageList;
import edu.fau.group3.model.Collection;
import edu.fau.group3.model.Product;
import edu.fau.group3.services.CollectionService;
import edu.fau.group3.services.ImageListService;
import edu.fau.group3.services.UserService;
import edu.fau.group3.services.ProductService;

public class DBUtil {

	final static AnnotationConfigApplicationContext CONTEXT = new AnnotationConfigApplicationContext(SpringJdbcConfig.class);
	final static UserService USER_SERVICE = CONTEXT.getBean(UserService.class);
	final static ImageListService IMAGE_LIST_SERVICE = CONTEXT.getBean(ImageListService.class);
	final static CollectionService COLLECTION_SERVICE = CONTEXT.getBean(CollectionService.class);
	final static ProductService PRODUCT_SERVICE = CONTEXT.getBean(ProductService.class);

	
	
	// user methods
	public static List<User> getAllUsers() {
		return USER_SERVICE.getAll();
	}

	public static User getUserById(int id) {
		return USER_SERVICE.getById(id);
	}
	
	
	public static User getUserByEmail(String Email) {
		return USER_SERVICE.getByName(Email);
	}

	public static boolean createUser(User object) {
		return USER_SERVICE.create(object);
	}

	public static boolean updateUser(User object) {
		return USER_SERVICE.update(object);
	}

	public static boolean DELETEUser(User object) {
		return USER_SERVICE.DELETE(object);
	}

	public static int checkEmailAndPassword(String email, String password) {
		List<User> userList = USER_SERVICE.getAll();
		for (int i = 0; i < userList.size(); i++) {
			if (userList.get(i).getEmail().equals(email)) {
				if (userList.get(i).getPassword().equals(password)) {
					return userList.get(i).getUserId();
				}
				break;
			}
		}
		return -1;
	}
	
	public static boolean checkIfEmailExists(String Email){
		User user = USER_SERVICE.getByName(Email);
		if(user != null) {
			return true;//The email does exist
		}
		else {
			return false;//The email does not exist
		}
	}

	
	
	// ImageList methods
	public static List<ImageList> getAllImages() {
		return IMAGE_LIST_SERVICE.getAll();
	}

	public static ImageList getImagesByID(int id) {
		return IMAGE_LIST_SERVICE.getById(id);
	}

	public static boolean createImageList(ImageList object) {
		return IMAGE_LIST_SERVICE.create(object);
	}

	public static boolean updateImageList(ImageList object) {
		return IMAGE_LIST_SERVICE.update(object);
	}

	public static boolean DELETEImages(ImageList object) {
		return IMAGE_LIST_SERVICE.DELETE(object);
	}
	
	public static boolean checkIfImageListExists(int Id){
		ImageList images = IMAGE_LIST_SERVICE.getById(Id);
		if(images != null) {
			return true;//The email does exist
		}
		else {
			return false;//The email does not exist
		}
	}

	
	
	// collection methods
	public static List<Collection> getAllCollections() {
		return COLLECTION_SERVICE.getAll();
	}

	public static Collection getCollectionByID(int id) {
		return COLLECTION_SERVICE.getById(id);
	}

	public static boolean createCollection(Collection object) {
		return COLLECTION_SERVICE.create(object);
	}

	public static boolean updateCollection(Collection object) {
		return COLLECTION_SERVICE.update(object);
	}

	public static boolean DELETECollection(Collection object) {
		return COLLECTION_SERVICE.DELETE(object);
	}
	public static boolean checkIfCollectionExists(int Id){
		Collection collection = COLLECTION_SERVICE.getById(Id);
		if(collection != null) {
			return true;//The collection does exist
		}
		else {
			return false;//The collection does not exist
		}
	}
	public static boolean checkIfCollectionNameExists(String name){
		Collection collection = COLLECTION_SERVICE.getByName(name);
		if(collection != null) {
			return true;//The collection does exist
		}
		else {
			return false;//The collection does not exist
		}
	}
	public static Collection getCollectionByName(String name){
		return COLLECTION_SERVICE.getByName(name);
	}

	
	
	// Product methods
	public static List<Product> getAllProducts() {
		return PRODUCT_SERVICE.getAll();
	}

	public static Product getProductByID(int id) {
		return PRODUCT_SERVICE.getById(id);
	}

	public static boolean createProduct(Product object) {
		return PRODUCT_SERVICE.create(object);
	}

	public static boolean updateProduct(Product object) {
		return PRODUCT_SERVICE.update(object);
	}

	public static boolean DELETEProduct(Product object) {
		return PRODUCT_SERVICE.DELETE(object);
	}
	public static List<Product> getProductsByCollectionId(int id) {
		return PRODUCT_SERVICE.getSortedList(id);
	}
	public static boolean checkIfProductExists(String SKU){
		Product product = PRODUCT_SERVICE.getByName(SKU);
		if(product != null) {
			return true;//The product does exist
		}
		else {
			return false;//The product does not exist
		}
	}
	public static Product GetProductBySKU(String SKU){
		return PRODUCT_SERVICE.getByName(SKU);
		}
}
