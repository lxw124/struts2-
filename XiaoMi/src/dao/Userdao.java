package dao;

import java.util.List;

import POJO.Shop;
import POJO.User;

public interface Userdao {
	public User insert(String username,String password) throws Exception;
	public User verification(String username,String password)throws Exception;
	public Shop insert(String username,Shop s)throws Exception;
	public List<Shop> finds(String username) throws Exception;
}
