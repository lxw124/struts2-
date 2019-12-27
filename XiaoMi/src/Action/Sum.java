package Action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import POJO.Shop;
import dao.Userdao;
import dao.UserdaoImple;

public class Sum {
	
	
	
	public String execute() throws Exception{
		HttpServletRequest req=ServletActionContext.getRequest();
		HttpSession session=req.getSession();
		String username=(String)session.getAttribute("username");
		HttpServletResponse res=ServletActionContext.getResponse();
		res.setCharacterEncoding("utf-8");
		if(username==null){
			res.getWriter().write("请先登录");
			return null;
		}
		System.out.println(123);
		int price=Integer.parseInt(req.getParameter("prices"));
		String path=req.getParameter("path");
		int num=Integer.valueOf(req.getParameter("num"));
		Shop s=new Shop();
		s.setPrice(price);
		s.setPath(path);
		s.setNum(num);
		Userdao dao=new UserdaoImple();
		dao.insert(username, s);
		
		res.getWriter().write("success");
		return null;
	}
}