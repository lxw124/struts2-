package Action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import POJO.Shop;

public class Select extends ActionSupport{
	private Map<String,Shop>map=new HashMap<String,Shop>();

	public Map<String, Shop> getMap() {
		return map;
	}

	public void setMap(Map<String, Shop> map) {
		this.map = map;
	}
	public String execute(){
		System.out.println(123);
		HttpServletRequest req=ServletActionContext.getRequest();
		int price=Integer.parseInt(req.getParameter("price"));
		String id=req.getParameter("id");
		System.out.println(id+"...");
		String path="";
		String introduce="";
		
		switch(id){
		case "1":
			path="./image/30.png";
			introduce="双模5G/ 三路并发/高通骁龙765G / 7nm 5G低功耗处理器 / "
					+ "120Hz高帧率流速屏 / 6.67''小孔径全面屏 / 索尼6400万前后六摄 / "
					+ "最高可选8GB+256GB大存储 / 4500mAh+30W快充 / 3D四曲面玻璃机身 / 多功能NFC";
			break;
		case "2":
			path="./image/31.png";
			introduce="120Hz高帧率流速屏 / 索尼6400万前后六摄 / 6.67''小孔径全面屏 / "
					+ "最高可选8GB+256GB大存储 / 高通骁龙730G处理器 / 3D四曲面玻璃机身 / 4500mAh+27W快充 / 多功能NFC";
			break;
		case "3":
			path="./image/24.png";
			introduce="1亿像素主摄 / 全场景五摄像头 / 四闪光灯 / 3200万自拍 / 10 倍混合光学变焦，50倍数字变焦 /"
					+ " 5260mAh ⼤电量 / 标配 30W疾速快充 / ⼩米⾸款超薄屏下指纹 /"
					+ " 德国莱茵低蓝光认证 / 多功能NFC / 红外万能遥控 / 1216超线性扬声器";
			break;
		case "4":
			path="./image/25.png";
			introduce="小米9 Pro 不仅是一部超快的 5G 手机，更是一部全面成熟的性能旗舰。它拥有超快的骁龙855 Plus，包括 30W 无线闪充在内的三重快充，"
					+ "还有用超强振感的横向线性马达、超高色准的专业屏幕以及众多强大配置，"
					+ "帮助你快人一步进入 5G 时代，发现更多，体验更多。";
			break;
		case "5":
			path="./image26.png";
			introduce=" Redmi 红米8手机支持QC3.0快充技术，最高充电功率为18W，标配 10W 充电器。如欲发挥全部充电效率，可单独选购支持 18W 的高速充电器。";
			break;
		case "6":
			path="./image/27.png";
			introduce="Redmi 红米8A 手机支持QC3.0快充技术，最高充电功率为18W，标配 10W 充电器。如欲发挥全部充电效率，可单独选购支持 18W 的高速充电器。";
			break;
		case "7":
			path="./image28.png";
			introduce=" Redmi Note 8 Pro 产品站非特别指出，均为我司实验室数据、设计技术参数及供应商提供数据，全站数据实际情况会因测试软件版本、具体测试环境、具体版本不同，而略有差异；";
			break;
		case "8":
			path="./image/29.png";
			introduce="屏幕方面，Redmi Note 8 手机显示屏采用曲线优美的圆角设计，四个圆角位于一个标准矩形内。按照标准矩形测量时，屏幕的对角线长度是 6.3 英寸 (实际可视区域较小)。全面屏是一项屏幕技术，"
					+ "指相比其他Redmi 手机，屏幕占比较大；90%屏占⽐数据依据行业内测量方式不同，实际结果可能略有差异。";
			break;
		}
		Shop s=new Shop();
		s.setPrice(price);
		s.setPath(path);
		s.setIntroduce(introduce);
		//System.out.println(id+".."+price);
		
		map.put("shop", s);
		return "success";
	}
}
