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
     <link rel="icon" href="${ctx}/favicon.ico">

    <title>无锡西码生物技术</title>

    <!-- Bootstrap core CSS -->
    <link href="${ctx}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${ctx}/summernote/summernote.css" rel="stylesheet">

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
    <link href="${ctx}/summernote/summernote.css" rel="stylesheet">
  </head>
  <body>
  <div class="container">
  <form action="doAddProduct.htm" method="post" enctype="multipart/form-data" class="form-horizontal"> 
  <div class="form-group">
    <label for="product.name" class="col-sm-2 control-label">产品名称</label>
    <div class="col-sm-10">
      <input name="product.name" id="productName" type="text" class="form-control" placeholder="产品名称">
    </div>
  </div>
  <div class="form-group">
    <label for="product.summary" class="col-sm-2 control-label">产品摘要</label>
    <div class="col-sm-10">
      <input name="product.summary" id="productSummary" type="text" class="form-control" placeholder="产品摘要">
    </div>
  </div>
  
  <!--
   <div class="form-group">
    <label for="product.introduction" class="col-sm-2 control-label">产品介绍</label>
    <div class="col-sm-10">
      <textarea name="product.introduction" id="product.introduction"  class="form-control" placeholder="产品介绍"></textarea>
    </div>
  </div>
   -->
   
   <div class="form-group">
    <label for="product.productType" class="col-sm-2 control-label">产品类型</label>
    <div class="col-sm-10">
     <select name="product.productType" id="product.productType" class="form-control">
		  <option value="0">标准提取物</option>
		  <option value="1">营养化学品</option>
		  <option value="2">OEM</option>
	</select>
    </div>
  </div>
  
   <div class="form-group">
    <label for="picture" class="col-sm-2 control-label">产品图片</label>
     <div class="col-sm-10">
    <input type="file" id="picture" name="picture">
    <p class="help-block">请上传800*600的图片.</p>
    </div>
  </div>
  
  <div class="form-group">
  <label for="picture" class="col-sm-2 control-label">产品介绍</label>
  <input type="hidden" name="product.introduction" id="introduction" />
	  <div class="col-sm-10">
		   <div id="summernote">
		   </div>
	   </div>
   </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="button" class="btn btn-default" onclick="addProduct()">确定</button>
       <a href="showProducts.htm" class="btn btn-default" role="button">取消</a>
    </div>
  </div>
</form>
  </div><!-- /.container -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${ctx}/js/jquery.min.js"></script>
    <script src="${ctx}/js/bootstrap.min.js"></script>
    <script src="${ctx}/summernote/summernote.min.js"></script>
    <script src="${ctx}/summernote/lang/summernote-zh-CN.min.js"></script>
    <script>
    $(document).ready(function() {
        $('#summernote').summernote({
        	height: 300,
        	lang: 'zh-CN',
            callbacks: {
                onImageUpload: function(files) {
                	 var $files = $(files);
                	  $files.each(function() {
                		 var file = this;
                		 
                		 var formData = new FormData();
                		 formData.append("image", file);
                		 
                		 $.ajax({
                	            data: formData,  
                	            type: "POST",  
                	            url: "uploadImg.htm",
                	            cache: false,  
                	            contentType: false,  
                	            processData: false,  
                	            success: function(response) {  
                	            	var jsdata = eval("("+response+")");
                	               var imgUrl = "${ctx}/snImages/"+jsdata.imageUrl;
                	                $('#summernote').summernote('insertImage', imgUrl, function($image) {
                	                	$image.css("max-width","800px");
                	                	$image.css("height","auto");
                	                	
                                    });
                	            },  
                	            error: function() {                 	                  
                	            }  
                	        })
                	 }) 
                  // upload image to server and create imgNode...
                 // $summernote.summernote('insertNode', imgNode);
                }
              }
        });
    });
    
    function addProduct() {
    	if($("#productName").val()=="") {
    		alert("请输入产品名称");
    		$("#productName").focus();
    		return;
    	}
    	
    	if($("#productSummary").val()=="") {
    		alert("请输入产品摘要");
    		$("#productSummary").focus();
    		return;
    	}
    	
    	if($("#picture").val()=="") {
    		alert("请选择图片");
    		return;
    	}
    	
    	var markupStr = $('#summernote').summernote('code');
    	$("#introduction").val(markupStr);
    	$("form").submit();
    }
  </script>
  </body>
</html>