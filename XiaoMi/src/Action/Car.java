package Action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import POJO.Shop;
import dao.Userdao;
import dao.UserdaoImple;

public class Car extends ActionSupport{
	public String execute() throws Exception{
		HttpServletRequest req=ServletActionContext.getRequest();
		HttpSession session=req.getSession();
		HttpServletResponse res=ServletActionContext.getResponse();
		res.setCharacterEncoding("utf-8");
		System.out.println("shop");
		String username=(String)session.getAttribute("username");
		if(username==null){
			res.getWriter().write("error");
			return "error";
		}
		Userdao dao=new UserdaoImple();
		List<Shop> list=dao.finds(username);
		Shop[]s=new Shop[list.size()];
		for(int i=0;i<list.size();i++){
			s[i]=list.get(i);
			System.out.println(">>");
		}
		req.setAttribute("shop", s);
		//map.put("shop", s);
		return "success";
		//return "success";
	}
}
