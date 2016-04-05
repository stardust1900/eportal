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
  <s:if test="errorMsg !=null">
  <div class="alert alert-danger" role="alert"><s:property value="errorMsg" /></div>
  </s:if>
   <form class="form-signin" role="form" method="post" action="doLogin.htm">
    	<div class="col-xs-4 col-md-offset-3">
        <h2 class="form-signin-heading">请登录</h2>
        </div>
         <div class="form-group">
         <div class="row">
         <div class="col-xs-4 col-md-offset-3">
        <input name="loginName" id="loginName" type="text" class="form-control" placeholder="用户名" required autofocus>
        </div>
        </div>
        </div>
        
         <div class="form-group">
         <div class="row">
         <div class="col-xs-4 col-md-offset-3">
        <input name="passwd" id="passwd" type="password" class="form-control" placeholder="密码" required>
        </div>
        </div>
        </div>
        <div class="row">
         <div class="col-xs-4 col-md-offset-3">
        <button class="btn btn-lg btn-primary btn-block" type="submit">登 录</button>
         </div>
        </div>
      </form>
  </div><!-- /.container -->


 

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${ctx}/js/jquery.min.js"></script>
    <script src="${ctx}/js/bootstrap.min.js"></script>
  </body>
</html>