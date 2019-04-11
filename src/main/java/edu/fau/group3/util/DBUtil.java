package edu.fau.group3.util;
import java.util.List;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.dao.DuplicateKeyException;

import edu.fau.group3.configuration.JDBCConfig;
import edu.fau.group3.configuration.SpringJdbcConfig;
import edu.fau.group3.model.User;
import edu.fau.group3.services.UserService;



public class DBUtil {
	
	final static AnnotationConfigApplicationContext CONTEXT = new AnnotationConfigApplicationContext(SpringJdbcConfig.class);
	final static UserService USER_SERVICE = CONTEXT.getBean(UserService.class);
	
	public static List<User> getAllUsers(){
		return USER_SERVICE.getAll();
	}
	
	/*public static User getUserById(int id){
		return USER_SERVICE.getById(id);
	}*/
	
	public static int checkUsernameAndPassword(String username, String password){
		List<User> userList = USER_SERVICE.getAll();
		
		for	(int i = 0 ; i < userList.size() ; i++){
			if (userList.get(i).getUsername().equals(username)){
				if (userList.get(i).getPassword().equals(password)){
					//return userList.get(i).getUserId();
				}
				break;
			}
		}return -1;
	}
	
}
