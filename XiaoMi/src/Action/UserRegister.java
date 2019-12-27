package Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import POJO.User;
import dao.Userdao;
import dao.UserdaoImple;

public class UserRegister extends ActionSupport{
	public String execute() throws Exception{
		HttpServletRequest req=ServletActionContext.getRequest();
		String username=req.getParameter("username");
		System.out.println(username);
		
		String password=req.getParameter("password");
		Userdao dao=new UserdaoImple();
		User u=dao.insert(username, password);
		String o=(String)req.getSession().getAttribute("num");
		String num=req.getParameter("num");
		if(!o.equals(num)){
			System.out.println("验证码错误");
			return "ERROR";
		}
		if(u==null){
			return "ERROR";
		}else{
			System.out.println("注册成功");
			
			
		}
		return "SUCCESS";
	}
}
