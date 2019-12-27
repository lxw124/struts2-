package Action;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class Out extends ActionSupport{
	public String execute(){
		HttpSession s=ServletActionContext.getRequest().getSession();
		s.removeAttribute("username");
		return "success";
	}
}
