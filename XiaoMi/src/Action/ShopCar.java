package Action;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import POJO.Shop;
import dao.Userdao;
import dao.UserdaoImple;

public class ShopCar extends ActionSupport{
	private Map<String,Shop[]>map=new HashMap<String,Shop[]>();
	
	
	public Map<String, Shop[]> getMap() {
		return map;
	}


	public void setMap(Map<String, Shop[]> map) {
		this.map = map;
	}


	public String execute() throws Exception{
		HttpServletRequest req=ServletActionContext.getRequest();
		HttpSession session=req.getSession();
		HttpServletResponse res=ServletActionContext.getResponse();
		res.setCharacterEncoding("utf-8");
		System.out.println("shop");
		String username=(String)session.getAttribute("username");
		if(username==null){
			res.getWriter().write("error");
			return "success";
		}
		Userdao dao=new UserdaoImple();
		List<Shop> list=dao.finds(username);
		Shop[]s=new Shop[list.size()];
		for(int i=0;i<list.size();i++){
			s[i]=list.get(i);
			
		}
		req.setAttribute("shop", s);
		map.put("shop", s);
		return "success";
	}
}
