package Action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class Detail extends ActionSupport {
	public String execute(){
		HttpServletRequest req=ServletActionContext.getRequest();
		String id=req.getParameter("id");
		System.out.println(id);
		
		return "SUCCESS";
	}
}
