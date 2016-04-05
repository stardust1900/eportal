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
        <li><a href="showProducts.htm">产品管理 <span class="sr-only">(current)</span></a></li>
        <li class="active"><a href="#">新闻管理</a></li>
         <li><a href="showMessages.htm">留言管理</a></li>
     </ul>
     <ul class="nav navbar-nav navbar-right">
      <li><a href="logout.htm">退出</a></li>
      </ul>
  </div>
  </div>
  </nav>
  
  <form action="modifyNews.htm" method="post" class="form-horizontal"> 
   <input type="hidden" name="news.id" id="news.id" value='<s:property value="news.id"/>' />
   <div class="form-group">
    <label for="news.newsType" class="col-sm-2 control-label">新闻类别</label>
    <div class="col-sm-10">
      <select name="news.newsType" id="news.newsType" class="form-control">
		  <option value="0" 
		    <s:if test="news.newsType == 0">selected
		  </s:if>
		  >公司新闻</option>
		  <option value="1" 
		    <s:if test="news.newsType == 1">selected
		  </s:if>
		  >行业动态</option>
	</select>
    </div>
  </div>
  
  <div class="form-group">
    <label for="news.title" class="col-sm-2 control-label">新闻标题</label>
    <div class="col-sm-10">
      <input name="news.title" id="news.title" type="text" class="form-control" value='<s:property value="news.title"/>'>
    </div>
  </div>
  <div class="form-group">
    <label for="news.summary" class="col-sm-2 control-label">新闻摘要</label>
    <div class="col-sm-10">
      <input name="news.summary" id="news.summary" type="text" class="form-control" value='<s:property value="news.summary"/>'>
    </div>
  </div>
  <div class="form-group">
  <label for="news.content" class="col-sm-2 control-label">产品介绍</label>
  <input type="hidden" name="news.content" id="news.content" />
	  <div class="col-sm-10">
		   <div id="summernote">
		   </div>
	   </div>
   </div>
  
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="button" class="btn btn-default" onclick="editNews()">确定</button>
       <a href="showNews.htm" class="btn btn-default" role="button">取消</a>
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
                }
              }
        });
        
        $('#summernote').summernote('code', '<s:property value="news.content" escape="false"/>');
    });
    
    function editNews() {
    	if($("[id='news.title']").val()=="") {
    		alert("请输入新闻标题");
    		$("[id='news.title']").focus();
    		return;
    	}
    	
    	if($("[id='news.summary']").val()=="") {
    		alert("请输入新闻摘要");
    		$("[id='news.summary']").focus();
    		return;
    	}
    	
    	var markupStr = $('#summernote').summernote('code');
    	$("[id='news.content']").val(markupStr);
    	$("form").submit();
    }
  </script>
  </body>
</html>