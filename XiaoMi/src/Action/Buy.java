package Action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class Buy extends ActionSupport {
	public String execute() throws IOException{
		HttpServletRequest req=ServletActionContext.getRequest();
		HttpServletResponse res=ServletActionContext.getResponse();
		res.setCharacterEncoding("utf-8");
		Object o=req.getSession().getAttribute("username");
		if(o==null){
			res.getWriter().write("0");
		}else{
			res.getWriter().write("1");
		}
		return null;
	}
}
