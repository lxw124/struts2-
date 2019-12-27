<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<style>
*{margin:0;padding:0;}
body{height:2000px;}
.head{
	display:flex;
	 width:100%;
	 height:35px;
	 font-size:10px;
	 background-color:rgb(41,41,41)
}
.head li{
cursor:pointer;
width:80px;
height:100%;
line-height:35px;
text-align:center;
color:rgb(164,149,111);
list-style:none;}
.user{
display:flex;
margin-left:150px;}

.shop{position:relative;
	 width:1050px;
	 margin-top:30px;
	 margin-left:120px;
	 height:625px;
}
.shop img{
		 float:left;
		 width:55px;
		 height:55px;
}
.phone{
	  float:left;
	  width:675px;
	  height:50px;
	  
	  margin-left:25px;
}
.phone span{display:inline-block;
			width:70px;
			height:30px;
			font-size:10px;
			text-align:center;
			line-height:30px;
}
.shop input{width:245px;
			height:47px;
}

.in{position:absolute;
	top:-3px;
	
}
.list li:hover{background-color:rgb(255,103,0)}
.pic{
position:relative;
width:100%;
margin-top:10px;
border:1px solid transparent;
height:465px;}
.pic .picture{position:relative;
		width:1050px;
		height:100%;
		overflow:hidden;
}
.picture li{position:absolute;
			top:0;
			left:0;
			opacity:0;
			
}
.picture li img{width:1050px;
				height:100%;
}
.list{
	position:absolute;
	width:190px;
	height:100%;
	top:0;
	left:0;
	font-size:10px;
	background-color:rgba(1,1,1,0.5)
	}
.list li{
width:190px;
text-indent:1em;
list-style:none;
line-height:45px;
color:white;
height:45px;}
.pic .show{opacity:1}
.list span{float:left;
		  
}
.list p{
width:145px;
float:left;}
.tu{display:grid;
	width:244px;
	height:172px;
	background-color:rgb(95,87,80);
	margin-left:120px;
	margin-top:-50px;
	grid-template-columns:repeat(3,1fr)
}
.tu li{
color:rgb(207,204,202);
border:1px solid rgb(102,94,87);
list-style:none;}
.tu span{display:block;
		margin-left:10px;
		font-size:15px;
}
.tu img{display:block;
		margin-top:10px;
		margin-left:20px;
}
.mi{display:flex;
	margin-left:370px;
	margin-top:-170px;
}
.mi li{list-style:none;}
.time{width:235px;
	 height:341px;
	 margin-left:120px;
	 margin-top:20px;
	 border-top:1px solid red;
	 background-color:rgb(241,237,237);
}
.tim{display:block;
		  margin-top:50px;
		  margin-left:95px;
		  color:rgb(229,57,52)
}
.time img{
display:block;
margin:20px auto;}
.times{width:195px;
	  height:70px;
	  margin-left:50px;
}
.times span{display:inline-block;
			background-color:rgb(95,81,70);
			width:40px;
			height:40px;
			color:white;
			text-align:center;
			line-height:40px;
}
.time p{text-align:center}
.move{
	 display:grid;
	 grid-template-columns:repeat(4,1fr);
	 width:984px;
	 height:345px;
	 margin-left:360px;
	 margin-top:-300px;
}
.move p{font-size:10px;
		width:240px;
		margin-top:40px;
		text-align:center;
}
.move img{display:block;
		 margin:auto;
}
.move span{display:block;
		  margin-left:95px;
		  color:rgb(250,101,9);
}
.long{background-image:url('./image/22.png');
	 width:1225px;
	 height:118px;
	 margin:20px auto;
}
.xm{background-image:url('./image/23.png');
	width:234px;
	height:613px;
	margin-left:120px;
	margin-top:20px;
}
.buy{display:grid;
	width:980px;
	height:615px;
	margin-left:370px;
	margin-top:-613px;
	 grid-template-columns:repeat(4,1fr);
}
.buy li{list-style:none;}
.buy li img{display:block;
			margin:auto;
}
.buy p{width:100%;
	  text-align:center;
	  font-size:15px;
}
.buy li:hover{margin-top:1px;}
.buy span{display:inline-block;
		 margin-left:90px;
		 font-size:10px;
		 color:yellow;
}
a{text-decoration:none;
 color:rgb(164,149,111);
}
.dot{
	position:absolute;
	top:420px;
	left:500px;
	width:100px;
	height:30px;
	
}
.dot li{
cursor:pointer;
transition:4s;
margin-left:3px;
width:20px;
height:20px;
border-radius:50%;
background-color:red;
text-align:center;
float:left;
list-style:none;}


</style>
</head>
<body>
	<div class='head'>
		<li>小米商城</li>
		<li>MIUI</li>
		<li>IoT</li>
		<li>云服务</li>
		<li>金融</li>
		<li>有品</li>
		<li>小爱开放平台</li>
		<li>企业团购</li>
		<li>资质证照</li>
		<li>协议规则</li>
		<div class='user'>
			<li class='users'>${sessionScope.username}</li>
			<li class='ins'><a href="${pageContext.request.contextPath}/login">登录</a></li>
			<li class='ins'><a href="${pageContext.request.contextPath}/register">注册</a></li>
			<li>消息通知</li>
			<li><a href="${pageContext.request.contextPath}/car">购物车</a></li>
			<li class='users'><a href="${pageContext.request.contextPath}/out">退出登录</a></li>
		</div>
		</div>
	<div class='shop'>
		<img  src="./image/1.png">
		<div class='phone'>
			<span>小米手机</span>
			<span>Redmi红米</span>
			<span>电视</span>
			<span>笔记本</span>
			<span>家电</span>
			<span>路由器</span>
			<span>智能硬件</span>
			<span>服务</span>
			<span>社区</span>
		</div>
		<input type='text'><img src="./image/3.png" class='in'>
		<div class='pic'>
				<ul class="picture">
					<li class="show"><img src="./image/4.png"></li>
					<li><img src="./image/5.png"></li>
					<li><img src="./image/6.png"></li>
					<li><img src="./image/7.png"></li>
				</ul>
				<ul class='dot'>
					<li>1</li>
					<li>2</li>
					<li>3</li>
					<li>4</li>
				</ul>
				
			  <ul class='list'>
				<li><p>手机 电话卡</p><span>></span></li>
				<li><p>电视 盒子</p><span>></span></li>
				<li><p>笔记本 显示器 平板</p><span>></span></li>
				<li><p>家电 插线板</p><span>></span></li>
				<li><p>出行 穿戴</p><span>></span></li>
				<li><p>智能  路由器</p><span>></span></li>
				<li><p>电源 配件</p><span>></span></li>
				<li><p>健康 儿童</p><span>></span></li>
				<li><p>耳机  音箱</p><span>></span></li>
				<li><p>生活 箱包</p><span>></span></li>
			</ul>
		</div>
	</div>
	<div class="tu">
		<li>
			<img src="./image/8.png">
			<span>小米秒杀</span>
		</li>
		<li>
			<img src="./image/9.png">
			<span>企业团购</span>
		</li>
		<li>
			<img src="./image/10.png">
			<span>F码通道</span>
		</li>
		<li>
			<img src="./image/11.png">
			<span>米粉卡</span>
		</li>
		<li>
			<img src="./image/12.png">
			<span>以旧换新</span>
		</li>
		<li>
			<img src="./image/13.png">
			<span>话费充值</span>
		</li>
	</div>
	<div class="mi">
		<li><img src="./image/14.png"></li>
		<li><img src="./image/15.png"></li>
		<li><img src="./image/16.png"></li>
	</div>
	<div class="time">
		<span class='tim'>14:00场</span>
		<img src="./image/17.png">
		<p>本场已结束</p>
		<div class='times'>
			<span>00</span>:
			<span>00</span>:
			<span>00</span>
		</div>
	</div>
	<div class="move">
		<div>
			<img src="./image/20.png">
			<p>米家无线除螨仪  白色</p>
			<span>499元</span>
		</div>
		<div>
			<img src="./image/21.png">
			<p>米家压力IH电饭煲</p>
			<span>599元</span>
		</div>
		<div>
			<img src="./image/19.png">
			<p>米家手持无线吸尘器 白色</p>
			<span>688元</span>
		</div>
		<div>
			<img src="./image/18.png">
			<p>小米净水器500G 白色</p>
			<span>1000元</span>
		</div>
	</div>
	<div class='long'></div>
	<div class='xm'></div>
	<div class="buy">
	<li>
		<a href="${pageContext.request.contextPath}/phone?id=1&price=1955">
			<img src="./image/30.png">
			<p>Redmi k30</p>
			<span>1955元起</span>
		</a>
	</li>
	<li>
		<a href="${pageContext.request.contextPath}/phone?id=2&price=1999">
			<img src="./image/31.png">
			<p>Redmi k30 5g</p>
			<span>1999元起</span>
		</a>
	</li>
	<li>
		<a href="${pageContext.request.contextPath}/phone?id=3&price=2799">
			<img src="./image/24.png">
			<p>小米cc9 pro</p>
			<span>2799元起</span>
		</a>
	</li>
	<li>
		<a href="${pageContext.request.contextPath}/phone?id=4&price=3699">
			<img src="./image/25.png">
			<p>小米9 pro 5g</p>
			<span>3699元起</span>
		</a>
	</li>
	<li>
		<a href="${pageContext.request.contextPath}/phone?id=5&price=699">
			<img src="./image/26.png">
			<p>Redmi 8</p>
			<span>699元起</span>
		</a>
	</li>
	<li>
		<a href="${pageContext.request.contextPath}/phone?id=6&price=699">
			<img src="./image/27.png">
			<p>Redmi 8A</p>
			<span>699元起</span>
		</a>
	</li>
	<li>
		<a href="${pageContext.request.contextPath}/phone?id=7&price=1299">
			<img src="./image/28.png">
			<p>Redmi note8 pro</p>
			<span>1299元起</span>
		</a>
	</li>
	<li>
		<a href="${pageContext.request.contextPath}/phone?id=8&price=1199">
			<img src="./image/29.png">
			<p>Redmi note8</p>
			<span>1199元起</span>
		</a>
	</li>
	</div>
	<script>
	var oli=document.querySelectorAll('.pic ul li')
	var ins=document.getElementsByClassName('ins');
	var users=document.getElementsByClassName('users')
	var dot=document.querySelectorAll('.dot li');
	var ul=document.querySelector(".pic ul")
	if(users[0].innerText!==""){
		for(var i=0;i<ins.length;i++){
		ins[i].style.display='none'}
	}else{
		for(var i=0;i<users.length;i++){
		users[i].style.display='none'
		}
	}
	function show(ele, target, time, type) {
	    if (ele) {
	        var num = parseFloat(getComputedStyle(ele)[type]),
	            date = new Date();

	        function running() {
	            var Time = new Date();
	            var i = (Time - date) / time;
	            if (i >= 1) {
	                i = 1;
	            }
	            var value = num - (num - target) * i
	            ele.style[type] = value;
	            requestAnimationFrame(running)
	        }
	        requestAnimationFrame(running)
	    }
	}
	var index=0
	dot[0].style.backgroundColor='yellow'
	function fn(){
		show(oli[index%4],0,4000,"opacity")
		dot[index%4].style.backgroundColor='red'
		index++;
		show(oli[index%4],1,4000,"opacity")
		dot[index%4].style.backgroundColor='yellow'
	}
	var timer=setInterval(fn,5000);
	 ul.onmouseover=function(){
		clearInterval(timer)
	}
	ul.onmouseout=function(){
		timer=setInterval(fn,5000);
	} 
	
	for(let z=0;z<dot.length;z++){
		dot[z].onclick=function(){
			show(oli[index%4],0,4000,'opacity')
			show(oli[z],1,4000,'opacity')
			dot[z].style.backgroundColor='yellow'
			dot[index%4].style.backgroundColor='red'
			index=z;
		}
	}
	</script>
</body>
</html>