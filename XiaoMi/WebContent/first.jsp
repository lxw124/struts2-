<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>手机</title>
<style>
*{margin:0;padding:0;}
p{width:450px;
  height:80px;
}
img{
display:block;
margin:auto}
.shop{width:500px;
	 height:700px;
	 margin:20px auto;
}
span{color:red;}
.btn{display:block;

}
input{text-align:center;}
</style>
</head>
<body>
<div class="shop">
<img src="">
<p></p>
<span></span>
<button>-</button>
<input type='text' placeholder=0 disabled='true'>
<button>+</button>
<button class='btn'>加入购物车</button>
</div>

<script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js"></script>

	<script type="text/javascript">
	
	var img=document.getElementsByTagName('img')[0]
	var op=document.getElementsByTagName('p')[0]
	var span=document.getElementsByTagName('span')[0]
	var arr=window.location.search.slice(1).split('&');
	var id=arr[0].split('=')
	var price=arr[1].split('=')
	console.log(id)
	console.log(price[1])
	var introduce=''
	var prices=''
	var path=''
	$.ajax({
		method:'POST',
		url:"${pageContext.request.contextPath}/phones",
		data:{id:id[1],price:price[1]},
		success:function(data){
			console.log(data.shop)
			img.style.width=200+'px'
			img.style.height=350+'px'
			img.src=data.shop.path
			path=data.shop.path
			op.innerText=data.shop.introduce
			span.innerText='价格：'+data.shop.price
		}
	})
	var input=document.getElementsByTagName('input')[0]
	var btn=document.getElementsByTagName('button');
	btn[1].onclick=function(){
		
		input.value++
	}
	btn[0].onclick=function(){
		console.log(input.value)
		input.value--
		if(input.value<0){input.value=0}
	}
	btn[2].onclick=function(){
		console.log(price[1])
		console.log(path)
		if(input.value==0)return;
		$.ajax({
			method:'POST',
			url:"${pageContext.request.contextPath}/sum",
			data:{prices:price[1],path:path,num:input.value},
			success:function(data){
				if(data=='success'){alert("购买成功")}
				else{alert(data)}
			}
		})
	}
	</script>
	
</body>
</html>