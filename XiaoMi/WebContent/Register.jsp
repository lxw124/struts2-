<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
<style>
	*{margin:0;padding:0;}
	.head{width:100%;
		 height:100px;
		 background-color:white;
	}
	.head img{display:block;
			  margin-left:30px;
			  margin-top:10px;
	}
	.box{width:400px;
		height:460px;
		margin:20px auto;
		background-color:rgb(235,235,243);
		color:rgb(255,103,0);
	}
	.box p{text-align:center;}
	li{list-style:none;
	  margin-top:20px;
	  margin-left:20px;
	}
	button{width:348px;
			height:51px;
			background-color:rgb(255,103,0);
			border:none;
			margin-top:20px;
			margin-left:20px;
	}
	
</style>
</head>
<body>
	<div class='head'>
		<img src="./image/32.png">
	</div>
	<form class="box" action="${pageContext.request.contextPath}/registers" method="POST">
		<p>账号注册</p>
		<li>账号：<input type="text" name="username"></li>
		<li>密码：<input type="password" name="password"></li>
		<li>验证码:
		<input type="text" name="num">
		<img src="${pageContext.request.contextPath}/pic"></li>
		<button type='button'>看不清，换一张</button>
		<button type="submit">提交</button>
	</form>
	<script>
	var btn=document.getElementsByTagName('button')[0]
	var input=document.getElementsByTagName('input');
	var img=document.getElementsByTagName('img')[1]
	btn.onclick=function(){
		img.src="${pageContext.request.contextPath}/pic?"+new Date();
	}
	
	
	</script>
</body>
</html>