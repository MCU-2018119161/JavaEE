<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="itheima" uri="http://itheima.com/common/"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() 
	                   + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>图书管理</title>
	<!-- 引入css样式文件 -->
	<!-- Bootstrap Core CSS -->
	<link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
	<!-- MetisMenu CSS -->
	<link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />
	<!-- DataTables CSS -->
	<link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />
	<!-- Custom CSS -->
	<link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />
	<!-- Custom Fonts -->
	<link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/datejs/jQuery-Timepicker-Addon/demos.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/datejs/jQuery-Timepicker-Addon/jquery-ui-timepicker-addon.css">
    <link href="https://cdn.bootcss.com/jqueryui/1.12.1/jquery-ui.css" rel="stylesheet">
	
</head>
<body>
<div id="wrapper">
  <!-- 导航栏部分 -->
  <nav class="navbar navbar-default navbar-static-top" role="navigation"
		 style="margin-bottom: 0">
	<div class="navbar-header">
		<a class="navbar-brand" href="<%=basePath%>customer/list.action"></a>
	</div>
	<!-- 导航栏右侧图标部分 -->
	<ul class="nav navbar-top-links navbar-right">
	    <!-- 邮件通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-envelope fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-messages">
				<li>
				    <a href="#">
						<div>
							<strong>张先生</strong> <span class="pull-right text-muted">
								<em>昨天</em>
							</span>
						</div>
						<div>今天晚上将会有新的图书到来，请注意查收...</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#">
				        <strong>查看全部消息</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul>
		</li>
		<!-- 邮件通知 end -->
		<!-- 任务通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
			    <i class="fa fa-tasks fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-tasks">
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 1</strong> 
								<span class="pull-right text-muted">完成40%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="40" aria-valuemin="0"
									aria-valuemax="100" style="width: 40%">
									<span class="sr-only">完成40%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<p>
								<strong>任务 2</strong> 
								<span class="pull-right text-muted">完成20%</span>
							</p>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-info" role="progressbar"
									aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
									style="width: 20%">
									<span class="sr-only">完成20%</span>
								</div>
							</div>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有任务</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 任务通知 end -->
		<!-- 消息通知 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-bell fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-alerts">
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-comment fa-fw"></i> 新回复 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-envelope fa-fw"></i> 新消息 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-tasks fa-fw"></i> 新任务 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a href="#">
						<div>
							<i class="fa fa-upload fa-fw"></i> 服务器重启 
							<span class="pull-right text-muted small">4分钟之前</span>
						</div>
				    </a>
				</li>
				<li class="divider"></li>
				<li>
				    <a class="text-center" href="#"> 
				        <strong>查看所有提醒</strong>
						<i class="fa fa-angle-right"></i>
				    </a>
				</li>
			</ul> 
		</li>
		<!-- 消息通知 end -->
		<!-- 用户信息和系统设置 start -->
		<li class="dropdown">
			<a class="dropdown-toggle" data-toggle="dropdown" href="#"> 
				<i class="fa fa-user fa-fw"></i>
				<i class="fa fa-caret-down"></i>
			</a>
			<ul class="dropdown-menu dropdown-user">
				<li><a href="#"><i class="fa fa-user fa-fw"></i>
				               用户：${USER_SESSION.username}
				    </a>
				</li>
				<li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
				<li class="divider"></li>
				<li>
					<a href="${pageContext.request.contextPath }/logout.action">
					<i class="fa fa-sign-out fa-fw"></i>退出登录
					</a>
				</li>
			</ul> 
		</li>
		<!-- 用户信息和系统设置结束 -->
	</ul>
	<!-- 左侧显示列表部分 start-->
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav navbar-collapse">
			<ul class="nav" id="side-menu">
				<li class="sidebar-search">
					<div class="input-group custom-search-form">
						<input type="text" class="form-control" placeholder="查询内容...">
						<span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
							</button>
						</span>
					</div> 
				</li>
				<li>
				    <a href="${pageContext.request.contextPath }/book/list.action" class="active">
				      <i class="fa fa-edit fa-fw"></i> 图书管理
				    </a>
				</li>
				<li>
				    <a href="#">
				      <i class="fa fa-dashboard fa-fw" ></i> 游客拜访
				    </a>
				</li>
			</ul>
		</div>
	</div>
	<!-- 左侧显示列表部分 end--> 
  </nav>
    <!-- 客户列表查询部分  start-->
	<div id="page-wrapper">
		<div class="row">
			<div class="col-lg-12"ALIGN="center" >
				<h1 class="page-header">图书管理</h1>
			</div>
			<!-- /.col-lg-12 -->
		</div>
		<!-- /.row -->
		<div class="panel panel-default">
			<div class="panel-body" ALIGN="center" >
				<form class="form-inline" method="get" 
				      action="${pageContext.request.contextPath }/book/list.action">
				    
				    <div class="form-group">
						<label for="titlr">图书名称:</label><input type="text" class="form-control" id="title" value="${title }" name="title"> 
						
					</div>
					<div class="form-group">
						<label for="author">图书作者:</label><input type="text" class="form-control" id="author" value="${author }" name="author"> 
						
					</div>
					<div class="form-group">
						<label for="publisher">出版社:</label><input type="text" class="form-control" id="publisher" value="${publisher}" name="publisher">

					</div>
					<button type="submit" class="btn btn-primary">查询</button>
				</form>
			</div>
		</div>
		<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newBookDialog" onclick="clearBook()">新建图书</a>
		<div class="row" ALIGN="center">
			<div class="col-lg-12">
				<div class="panel panel-default" ALIGN="center">
					<div class="panel-heading">图书信息列表</div>
					<!-- /.panel-heading -->
					<table class="table table-bordered table-striped" >
						<thead>
							<tr>
							    <th>图书封面</th>
								<th>图书编号</th>
								<th>图书名称</th>
								<th>图书作者</th>
								<th>图书出版社</th>
								<th>图书类型</th>
								<th>图书价格</th>
								<th>图书印刷日期</th>
								<th>图书简介</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${page.rows}" var="row">
								<tr>
								    <td> 
								       <img src="${row.photo}" width="80" height="90" alt="" id="photo">
								    </td>
									<td ALIGN="center">${row.isbn} </td>
									<td ALIGN="center">${row.title}</td>
									<td ALIGN="center">${row.author}</td>
									<td ALIGN="center">${row.publisher}</td>
									<td ALIGN="center">${row.type}</td>
									<td ALIGN="center">${row.price}</td>
									<td ALIGN="center">${row.publicationDate}</td>
								    <td ALIGN="center">${row.introduction}</td>
									<td>
										<a href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#editBookDialog" onclick= "editBook(${row.isbn})">修改</a>
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteBook(${row.isbn})">删除</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="col-md-12 text-right">
						<itheima:page url="${pageContext.request.contextPath }/book/list.action" />
					</div>
					<!-- /.panel-body -->
				</div>
				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!-- 图书列表查询部分  end-->
</div>
<!-- 创建图书模态框 -->
<div class="modal fade" id="newBookDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">新建图书信息</h4>
			</div>
			<div class="modal-body">
				<form id="newUploadCover" action="${pageContext.request.contextPath }/book/uploadBookCover.action" 
				               method="post" enctype="multipart/form-data" target="newFrameName">
					<div  style="display:inline">
							<div id="div1" style="float:left">
								<input type="submit" value="上传封面"/> &nbsp;&nbsp;&nbsp;&nbsp;
							</div>
							<div  id="div2" style="float:left">
				                <input type="file" id="new_photo" placeholder="图书封面" name="photo"  onchange="UploadImg(this)"/>	
						   </div>
					</div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;			
					<!--  <input type="file" name="photo"/>  -->
					<img src="" alt="" id="new_cover"/>
				</form>
			<iframe src="" frameborder="0" name="newFrameName" style="display: none;" ></iframe>
			
			
				<form class="form-horizontal" id="new_book_form" method="post" enctype="multipart/form-data" >
				<!-- 图书封面 
					<div class="form-group">
						<label for="edit_author" class="col-sm-2 control-label">图书封面</label>
						<div class="col-sm-10">
							<input type="file" id="new_photo" placeholder="图书封面" name="new_photo"  onchange="UploadImg(this)"/>
		                       <input type="text" id="photo" name="photo">
		                    <img src="" alt="" id="new_cover"/>
						</div>
					</div>	-->
					<div class="form-group">
						<label for="new_isbn" class="col-sm-2 control-label">图书编号</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_isbn" placeholder="图书编号" name="isbn" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_title" class="col-sm-2 control-label">图书名称</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_title " placeholder="图书名称" name="title" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_author" class="col-sm-2 control-label">图书作者</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_author" placeholder="图书作者" name="author" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_publisher" class="col-sm-2 control-label">图书出版社</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_publisher" placeholder="图书出版社" name="publisher" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_type" class="col-sm-2 control-label">图书类型</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_type" placeholder="图书类型" name="type" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_price" class="col-sm-2 control-label">图书价格</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_prece" placeholder="图书价格" name="price" />
						</div>
					</div>
					<!--   -->
					<div class="form-group">
						<label for="new_publicationDate" class="col-sm-2 control-label">图书出版日期</label>
						<div class="col-sm-10">
						    <input type="text" class="form-control" id="new_publicationDate" placeholder="图书出版日期" name="publicationDate" readonly="readonly"/>
						</div>
					</div> 
					<div class="form-group">
						<label for="new_introduction" class="col-sm-2 control-label">图书简介</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_introduction" placeholder="图书简介" name="introduction" />
						</div>
					</div>
					</form>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="button" class="btn btn-primary" onclick="createBook()">创建图书</button>
					</div>
			</div>

		</div>
	</div>
</div>
<!-- 修改图书模态框 -->
<div class="modal fade" id="editBookDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改图书信息</h4>
			</div>
			<div class="modal-body">   
			<!-- 图书封面 -->
				<form class="form-horizontal" id="editUploadCover" action="${pageContext.request.contextPath }/book/uploadBookCover.action" 
				               method="post" enctype="multipart/form-data" target="editFrameName">
					<div class="form-group" style="display:inline">
						<div id="div1" style="float:left">
							<input type="submit" value="上传封面"/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						</div>
						<div  id="div2" style="float:left">
			                <input type="file" id="edit_photo" placeholder="图书封面" name="photo"  onchange="UploadImg(this)"/>			
					   </div>
					 </div>
					<!--  <input type="file" name="photo"/>  -->
					<div>
					    <img  src="" alt="" id="edit_cover"/>
					</div>
				</form>
				<iframe src="" frameborder="0" id="editFrameName" name="editFrameName" style="display: none;" ></iframe>
		        <!-- 图书数据 -->
				<form class="form-horizontal" id="edit_book_form">
					<input type="hidden" id="edit_isbn" name="isbn"/>	
					<!-- 图书封面 
					<div class="form-group">
						<label for="edit_author" class="col-sm-2 control-label">图书封面</label>
						<div class="col-sm-10">
							<input type="file" id="upload_photo" placeholder="图书封面" name="photo"  onchange="UploadImg(this)"/>
		                    <input type="hidden" name="photo">  
		                    <img src="" alt="" id="edit_cover"/>
						</div>
					</div>	-->
					<div class="form-group">
						<label for="edit_author" class="col-sm-2 control-label">图书作者</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_author" placeholder="图书作者" name="author" />
						</div>
					</div>	
					<div class="form-group">
						<label for="edit_title" class="col-sm-2 control-label">图书名称</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_title" placeholder="图书名称" name="title" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_publisher" class="col-sm-2 control-label">图书出版社</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_publisher" placeholder="图书出版社" name="publisher" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_type" class="col-sm-2 control-label">图书类型</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_type" placeholder="图书类型" name="type" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_price" class="col-sm-2 control-label">图书价格</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_price" placeholder="图书价格" name="price" />
						</div>
					</div>
					<div class="form-group">
						<label for="edit_publicationDate" class="col-sm-2 control-label">图书出版日期</label>
						<div class="col-sm-10">
						    <input type="text" class="form-control" id="edit_publicationDate" placeholder="图书出版日期" name="publicationDate" readonly="readonly"/>
						</div>
					</div>
					<div class="form-group">
						<label for="edit_introduction" class="col-sm-2 control-label">图书简介</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="edit_introduction" placeholder="图书简介" name="introduction" />
						</div>
					</div>
				</form>
			</div>
			
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<input type="button" class="btn btn-primary" value="保存修改" onclick="updateBook()"/>
			</div>
		</div>
	</div>
</div>
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="<%=basePath%>js/jquery-1.11.3.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>
<!-- 日期模拟框 -->
<script src="https://cdn.bootcss.com/jqueryui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/datejs/jQuery-Timepicker-Addon/jquery-ui-timepicker-addon.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/datejs/js/jquery.ui.datepicker-zh-CN.js.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/datejs/js/jquery-ui-timepicker-zh-CN.js"></script>



<!-- 编写js代码 -->
<script type="text/javascript">

//清空新建客户窗口中的数据
	function clearBook() {
	    $("#new_isbn").val("");
	    $("#new_title").val("")
	    $("#new_author").val("")
	    $("#new_publisher").val("")
	    $("#new_price").val("");
	    $("#new_type").val("");
	    $("#new_publicationDate").val("");
	    $("#new_introduction").val("");
	    $("#new_cover").val("");
	}
	// 创建图书
	function createBook() {
	$.post("<%=basePath%>book/create.action",
			$("#new_book_form").serialize(),
			function(data){
		        if(data =="OK"){
		            alert("图书创建成功！");
		            window.location.reload();
		        }else{
		            alert("图书创建失败！");
		            window.location.reload();
		        }
	    });
	}
	
	// 通过isbn获取修改的图书信息
	function editBook(isbn) {
	    $.ajax({
	        type:"get",
	        url:"<%=basePath%>book/getBookByIsbn.action",
	        data:{"isbn":isbn},
	        success:function(data) {
	        	$("#edit_isbn").val(data.isbn);
	            $("#edit_author").val(data.author);
	            $("#edit_title").val(data.title);
	            $("#edit_publisher").val(data.publisher)
	            $("#edit_type").val(data.type)
	            $("#edit_price").val(data.price)
	            $("#edit_publicationDate").val(data.publicationDate)
	            $("#edit_introduction").val(data.introduction);
	            //$("#edit_photo").val(data.photo)
	        }
	    });
	}
    // 执行修改图书操作
	function updateBook() {
		$.post("<%=basePath%>book/update.action",$("#edit_book_form").serialize(),function(data){
			if(data =="OK"){
				alert("图书信息更新成功！");
				window.location.reload();
			}else{
				alert("图书信息更新失败！");
				window.location.reload();
			}
		});
	}
	// 删除图书
	function deleteBook(isbn) {
	    if(confirm('确实要删除该图书吗?')) {
	$.post("<%=basePath%>book/delete.action",{"isbn":isbn},
	function(data){
	            if(data =="OK"){
	                alert("图书删除成功！");
	                window.location.reload();
	            }else{
	                alert("删除图书失败！");
	                window.location.reload();
	            }
	        });
	    }
	}
	//图书封面预览
	function UploadImg(obj) {
        var file = obj.files[0];  //获取选择的文件
        var reader = new FileReader(); 
        reader.readAsDataURL(file);  //获取图片的缩略路径
        
        reader.onload = function (e) {    //成功读取文件
            var edit_img = document.getElementById("edit_cover");//获取显示的图片组件的id
            var new_img = document.getElementById("new_cover");//获取显示的图片组件的id
            
            document.getElementById("new_cover").height="170"//设计预览图片的宽度
            document.getElementById("new_cover").width="200"//设计预览图片的高度
            
            document.getElementById("edit_cover").height="170"//设计预览图片的宽度
            document.getElementById("edit_cover").width="200"//设计预览图片的高度
                    
            edit_img.src = e.target.result;   //将成功读取的文件的路径赋值给预览封面组件的src路径
            new_img.src = e.target.result;
            
            document.getElementById("new_photo").value;
      
        };
        
    }
    /**
    *
    *name="sdate"
     日期模拟框 
            *
            **/
    $(function(){
        $('input[id="new_publicationDate"],input[id="edit_publicationDate"]').datepicker({
            dateFormat: "yy-mm-dd"
        });
    })
    
   
   
    //创建模拟框iframe回调函数处理
    //以下就可以判断并处理返回值
    $("iframe[name=newFrameName]").on("load", function() { 
　　       var responseText = $("iframe")[0].contentDocument.body.getElementsByTagName("pre")[0].innerHTML;
　       　alert("上传成功"); 
　       　 
    }) 
   //修改模拟框iframe回调函数处理
    $("iframe[id=editFrameName]").on("load", function() { 
　　       //var responseText = $("iframe")[0].contentDocument.body.getElementsByTagName("pre")[0].innerHTML;
　       　alert("上传成功"); 
　       　 
    }) 

  
    
    
    
    
</script>
</body>
</html>