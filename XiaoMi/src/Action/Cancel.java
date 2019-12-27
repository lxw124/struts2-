package Action;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;


import com.opensymphony.xwork2.ActionSupport;

import util.JDBCUtils;

public class Cancel extends ActionSupport{
	public String execute() throws Exception{
		HttpServletRequest req=ServletActionContext.getRequest();
		String numbers=req.getParameter("numbers");
		String price=req.getParameter("price");
		System.out.println(numbers+"[]"+price);
		JDBCUtils.loadDriver();
		Connection conn=JDBCUtils.getConnection();
		String username=(String)req.getSession().getAttribute("username");
		PreparedStatement ps=conn.prepareStatement("delete from shop where num=? and price=? and username=?");
		
		ps.setInt(1, Integer.valueOf(numbers));
		ps.setInt(2, Integer.valueOf(price));
		ps.setString(3, username);
		ps.executeUpdate();
		ps.close();
		conn.close();
		HttpServletResponse res=ServletActionContext.getResponse();
		res.setCharacterEncoding("utf-8");
		res.getWriter().write("删除成功");
		return null;
	}
}
