package cilicili.jz2.service;

import cilicili.jz2.pojo.User;

public interface IUserService {
	User findUserById(int id);
	
	User findUserByUsername(String username);
	
	User findUserByUsernamePassword(String username, String password);
	
	void addUser(User user);
	
	void updateUser(User user);
}
