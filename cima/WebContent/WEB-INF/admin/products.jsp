<%@ page language="java" contentType="text/html; charset=utf-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- <link rel="icon" href="../../favicon.ico"> -->

    <title>无锡西码生物技术</title>

    <!-- Bootstrap core CSS -->
    <link href="${ctx}/css/bootstrap.min.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="${ctx}/js/ie-emulation-modes-warning.js"></script>

    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="${ctx}/js/ie10-viewport-bug-workaround.js"></script>

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Custom styles for this template -->
    <link href="${ctx}/css/navbar.css" rel="stylesheet">
  </head>
<!-- NAVBAR
================================================== -->
  <body>
  <div class="container">
  <nav class="navbar navbar-default">
  <div class="container-fluid">
  	<div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">管理平台</a>
    </div>
  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
  	 <ul class="nav navbar-nav">
        <li class="active"><a href="#">产品管理 <span class="sr-only">(current)</span></a></li>
        <li><a href="showNews.htm">新闻管理</a></li>
        <li><a href="showMessages.htm">留言管理</a></li>
     </ul>
     <ul class="nav navbar-nav navbar-right">
      <li><a href="logout.htm">退出</a></li>
      </ul>
  </div>
  
  </div>
  
  </nav>
  
	 <table class="table table-hover">
	 <thead>
	 	<tr>
	 		<td>产品ID</td>
			<td>产品名称</td>
			<td>产品摘要</td>
			<!--<td>产品介绍</td>
			--><td>产品类型</td>
			<td>图片路径</td>
			<td>创建日期</td>
			<td>最后修改日期</td>
			<td>备注</td>
			<td>排序</td>
			<td>操作</td>
	 	</tr>
	 </thead>
	 <tbody>
	 <s:iterator value="products" var="product"> 
	 	<tr>
		<td><s:property value="id"/></td>
		<td><s:property value="name"/></td>
		<td><s:property value="summary"/></td>
		<!--<td><s:property value="introduction"/></td>
		--><td>
		<s:if test="productType==0">标准提取物</s:if>
		<s:if test="productType==1">营养化学品</s:if>
		<s:if test="productType==2">OEM</s:if>
		</td>
		<td><s:property value="imgPath"/></td>
		<td><s:property value="createdDate"/></td>
		<td><s:property value="updatedDate"/></td>
		<td><s:property value="remark"/></td>
		<td><s:property value="sortNum"/></td>
		<td>
		<a href="showProdDetail.htm?productId=<s:property value='id'/>"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span></a>
		<a href="toEditProduct.htm?productId=<s:property value='id'/>"><span class="glyphicon glyphicon-edit" aria-hidden="true"></span></a>
		<a href="#" onclick="delConfirm('<s:property value="name"/>','<s:property value="id"/>')"><span class="glyphicon glyphicon-trash" aria-hidden="true"></span></a>
		</td>
		</tr>
		</s:iterator>
	 </tbody>
	</table>
	
<nav>
  <ul class="pagination">
    <li 
    <s:if test="%{prePage < 0}">
    class="disabled" 
    </s:if>
    >
    	<a href="showProducts.htm?currentPage=<s:property value='prePage'/>" aria-label="Previous">
    		<span aria-hidden="true">&laquo;</span>
    	</a>
    </li>

    <s:bean name="org.apache.struts2.util.Counter">
	    <s:param name="first" value="1" />
		<s:param name="last" value="totalPage" />
		<s:iterator>
			<s:if test="%{currentPage==(current-2)}">
				<li class="active"><a href="showProducts.htm?currentPage=<s:property value='current-2'/>"><s:property value='current-1'/> <span class="sr-only">(current)</span></a></li>
			</s:if>
			<s:else>
				<li><a href="showProducts.htm?currentPage=<s:property value='current-2'/>"><s:property value='current-1'/></a></li>
			</s:else>
		</s:iterator>
    </s:bean>
    
    <li 
    <s:if test="%{nextPage >= totalPage }">
    class="disabled" 
    </s:if>
    >
     <a href="showProducts.htm?currentPage=<s:property value='nextPage'/>" aria-label="Next">
       <span aria-hidden="true">&raquo;</span>
     </a>
   </li>
    
  </ul>
</nav>

<a href="addProduct.htm" class="btn btn-default" role="button">添加</a>
  </div><!-- /.container -->

<div id="myModal" class="modal fade">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">删除产品</h4>
      </div>
      <div class="modal-body">
        <p id="delProductText"></p>
      </div>
      <div class="modal-footer">
      <form action="delProduct.htm" method="post">
      <input type="hidden" id="delProductId" name="delProductId" value=""/>
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <button type="submit" class="btn btn-primary">确定</button>
      </form>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
 

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${ctx}/js/jquery.min.js"></script>
    <script src="${ctx}/js/bootstrap.min.js"></script>
    <script type="text/javascript">
    function delConfirm(productName,productId) {
    //$('#myModal').modal('show');
	    $('#myModal').on('shown.bs.modal', function () {
			$('#delProductText').text("确定要删除‘"+productName+"’吗？");
			$('#delProductId').val(productId);
		}).modal('show');
    }
    </script>
  </body>
</html>