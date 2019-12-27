<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车</title>
<style>
body{
width:100%;
height:700px;
background-color:rgb(245,245,245);}
*{marign:0;padding:0;}
.show{display:none;}
.car{width:100%;
	height:100%;
}
img{margin-left:200px;
	margin-top:100px;
}
a{text-decoration:none;
 color:white;
}
.out{width:170px;
	height:50px;
	background-color:rgb(254,102,0);
	text-align:center;
	line-height:50px;
}
.out{margin-left:700px;
	margin-top:-300px;
}
p{margin-left:200px;}
li{list-style:none;
  margin-top:10px;
  margin-left:100px;
}
buy{width:500px;
	margin:30px auto;
}
span{display:block;
	margin-left:200px;
}
button{margin-left:200px;}
.show{display:none;}
</style>
</head>
<body>
	<div class="buy">
		<c:forEach items='${shop}' var="a">
		<li>
		<img src="${a.getPath()}">
		<span class="num">数量：${a.getNum()}</span>
		<label class="show">${a.getPrice()}</label>
		<button>删除订单</button>
		</li>
		</c:forEach>
		<span id='sum'></span>
	</div>
	<div class="car">
		<img src="./image/33.png">
		<p>您的购物车还是空的</p>
		<div class="out">
		<a href="${pageContext.request.contextPath}/index">马上去购物</a>
		</div>
	</div>
	<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>
	<script>
		var car=document.getElementsByClassName('car')[0]
		var buy=document.getElementsByClassName('buy')[0]
		var num=document.getElementsByClassName('num')
		var show=document.getElementsByClassName('show')
		if(!buy.innerHTML==''){
			car.style.display='none'
		}
		var span=document.getElementById('sum')
		var temp=0;
		for(var i=0;i<num.length;i++){
			temp+=num[i].innerText.split("：")[1]*show[i].innerText
			
		}
		console.log(span)
		span.innerText="总价:"+temp
		if(temp==0){
		car.style.display='block'
		buy.style.display='none'
		}
		
		var btn=document.querySelectorAll('li button')
		var oli=document.querySelectorAll('li')
		console.log(btn)
		for(let j=0;j<btn.length;j++){
		btn[j].onclick=function(){
			console.log(j)
			var temp=0;
			var price=show[j].innerText;
			var nums=num[j].innerText.split('：')[1]
			//var nums=num[j].innerText.split[':'][1]
			
			//console.log(price+".."+nums)
			show[j].innerText='0'
			oli[j].style.display='none'
			 for(var z=0;z<num.length;z++){
			temp+=num[z].innerText.split("：")[1]*show[z].innerText
			}span.innerText="总价:"+temp
			 
			 $.ajax({
				url:"${pageContext.request.contextPath}/cancel",
				data:{
					numbers:nums,
					price:price
				},
				success:function(data){
					alert(data)
					console.log(span.innerText.split(":")[1])
					 if(span.innerText.split('：')[1]==0){
						console.log("shanchu")
						car.style.display='block'
						buy.style.display='none'
					} 
				}
			})
			 
		}}
	</script>
</body>
</html>