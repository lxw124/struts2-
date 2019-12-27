package Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import dao.Userdao;
import dao.UserdaoImple;

public class Logins extends ActionSupport{
	public String execute() throws Exception{
		HttpServletRequest req=ServletActionContext.getRequest();
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		System.out.println(username+".."+password);
		Userdao dao=new UserdaoImple();
		Object o=dao.verification(username, password);
		
		String os=(String)req.getSession().getAttribute("num");
		String num=req.getParameter("num");
		if(!os.equals(num)){
			System.out.println("验证码错误");
			return "ERROR";
		}
		
		if(o!=null){
			HttpSession s=req.getSession();
			s.setAttribute("username",username);
			return "SUCCESS";
		}else{
			return "ERROR";
		}
		
	}
}
