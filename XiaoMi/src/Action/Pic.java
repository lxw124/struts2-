package Action;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class Pic extends ActionSupport{
	public String execute() throws IOException{
		int width=80;
		int height=20;
		BufferedImage image=new BufferedImage(width,height,BufferedImage.TYPE_INT_BGR);
		HttpServletResponse res=ServletActionContext.getResponse();
		Graphics g=image.getGraphics();
		g.setColor(Color.pink);
		g.fillRect(0, 0,width,height);
		HttpServletRequest req=ServletActionContext.getRequest();
		g.setColor(Color.BLUE);
		g.drawRect(0, 0, width-1, height-1);
		String str="abcdefghijklmnopqrstuvwxyz";
		Random r=new Random();
		char[]a=new char[4];
		for(int i=1;i<=4;i++){
			int index=r.nextInt(str.length());
			char c=str.charAt(index);
			a[i-1]=c;
			g.drawString(c+"",width/5*i, height/2);
		}
		req.getSession().setAttribute("num", new String(a));
		ImageIO.write(image, "jpg", res.getOutputStream());
		return null;
		
	}
}
