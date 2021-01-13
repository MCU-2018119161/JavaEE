<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>登录页面</title>
<meta http-equiv=Content-Type content="text/html; charset=utf-8">
<link href="${pageContext.request.contextPath}/css/style.css"
	   type=text/css rel=stylesheet>
<link href="${pageContext.request.contextPath}/css/boot-crm.css"
	   type=text/css rel=stylesheet>
<script src=
       "${pageContext.request.contextPath}/js/jquery-1.11.3.min.js">
</script>
<meta content="MSHTML 6.00.2600.0" name=GENERATOR>
<script>
// 判断是登录账号和密码是否为空
function check(){
    var username = $("#username").val();
    var password = $("#password").val();
    if(uaername=="" || password==""){
    	$("#message").text("账号或密码不能为空！");
        return false;
    }  
    return true;
}

function to_visitor() {
  window.location.href='WEB-INF/jsp/visitor.jsp';
}
</script>
</head>
<body leftMargin=0 topMargin=0 marginwidth="0" marginheight="0"
	 background="${pageContext.request.contextPath}/images/rights.jpg">
<div ALIGN="center">
<table id="table1">
	<tr>
		<td height="153"></td>
		<td></td>
	</tr>
	<tr>
   <td class="login_msg" width="450" align="center">
	 <!-- margin:0px auto; 控制当前标签居中 -->
	 <fieldset style="width: auto; margin: 0px auto;">
		  <legend>
		     <font style="font-size:20px" face="楷体">
		          欢迎使用图书管理系统
		     </font>
		  </legend> 
		<font color="red">
			 <%-- 提示信息--%>
			 <span id="message">${msg}</span>
		</font>
		<%-- 提交后的位置：/WEB-INF/jsp/book.jsp--%>
		<form action="${pageContext.request.contextPath }/login.action" 
			                       method="post" onsubmit="return check()">
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br />
          账&nbsp;号：<input id="username" type="text" name="username" />
          <br /><br />
          密&nbsp;码：<input id="password" type="password" name="password" />
          <br /><br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <input type="submit" value="登录" />
		 </form>
		 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 <a href="${pageContext.request.contextPath }/book/visit.action" class="active">
				      <i class="fa fa-edit fa-fw"></i> 游客访问
				    </a>
		 <%-- 
		 <form action=" ${pageContext.request.contextPath }/visit.action" 
		                          method="post" >
		 <input type="submit" value="游客"/>
		 </form>--%>
	 </fieldset>
	</td>
	<td 
		width="200" height="412">
   </td>
	</tr>
</table>
</div>
</body>
</html>
