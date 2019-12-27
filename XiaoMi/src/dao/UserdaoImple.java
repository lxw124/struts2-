package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import POJO.Shop;
import POJO.User;
import util.JDBCUtils;

public class UserdaoImple implements Userdao {
	public User insert(String username,String password) throws Exception {
		JDBCUtils.loadDriver();
		Connection con=JDBCUtils.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from user where username=?");
		ps.setString(1, username);
		ps.executeQuery();
		ResultSet rs=ps.getResultSet();
		if(rs.next()){
			ps.close();
			con.close();
			
			return null;
		}else{
			PreparedStatement pss=con.prepareStatement("insert into user"
					+ "(username,password)values(?,?)");
			pss.setString(1, username);
			pss.setString(2, password);
			pss.executeUpdate();
			pss.close();
			con.close();
			return new User();
		}
		
	}
	public User verification(String username,String password) throws Exception{
		JDBCUtils.loadDriver();
		Connection con=JDBCUtils.getConnection();
		PreparedStatement ps=con.prepareStatement("select * from user where username=?");
		ps.setString(1, username);
		
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			if(password.equals(rs.getString("password"))){
				return new User();
			}
		}
		return null;
	}
	public Shop insert(String username,Shop s)throws Exception{
		JDBCUtils.loadDriver();
		Connection con=JDBCUtils.getConnection();
		String sqls="select * from shop where username=? and path=?";
		PreparedStatement p=con.prepareStatement(sqls);
		p.setString(1,username);
		p.setString(2, s.getPath());
		ResultSet rs=p.executeQuery();
		if(!rs.next()){
		String sql="insert into shop(username,price,path,num) values(?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, username);
		ps.setInt(2, s.getPrice());
		ps.setString(3, s.getPath());
		ps.setInt(4, s.getNum());
		ps.executeUpdate();
		ps.close();
		p.close();
		con.close();}else{
			String update="update shop set num=num+? where path=?";
			PreparedStatement state=con.prepareStatement(update);
			state.setInt(1, s.getNum());
			state.setString(2, s.getPath());
			state.executeUpdate();
		}
		return s;
	}
	public List<Shop> finds(String username) throws Exception{
		JDBCUtils.loadDriver();
		Connection con=JDBCUtils.getConnection();
		String sql="select * from shop where username=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, username);
		List<Shop>list=new ArrayList<Shop>();
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Shop s=new Shop();
			s.setPrice(rs.getInt("price"));
			s.setPath(rs.getString("path"));
			s.setUsername(rs.getString("username"));
			s.setNum(rs.getInt("num"));
			//s.setNum(rs.getInt("num"));
			list.add(s);
		}
		return list;
	}
	
	
}
