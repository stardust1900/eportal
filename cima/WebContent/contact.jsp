<%@ page language="java" contentType="text/html; charset=utf-8"%>  
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- <link rel="icon" href="../../favicon.ico"> -->

    <title><s:text name="page.title"/></title>

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
     <style type="text/css">  
        .navbar .nav > li .dropdown-menu {  
            margin: 0;  
        }  
        .navbar .nav > li:hover .dropdown-menu {  
            display: block;  
        }  
    </style> 
  </head>
<!-- NAVBAR
================================================== -->
  <body>
      <div class="container">

        <div class="navbar navbar-inverse " role="navigation">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="index.htm"><s:text name="page.brand"/></a>
            </div>
            <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li><a href="index.htm"><s:text name="page.home"/></a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown"><s:text name="page.about"/><span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="about.htm?aboutType=p"><s:text name="page.about.profile"/></a></li>
                    <li><a href="about.htm?aboutType=h"><s:text name="page.about.honors"/></a></li>
                  </ul>
                </li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown"><s:text name="page.products"/><span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                     <li><a href="products.htm?productType=0"><s:text name="page.products.extract"/></a></li>
                    <li><a href="products.htm?productType=1"><s:text name="page.products.chemicals"/></a></li>
                    <li><a href="products.htm?productType=2"><s:text name="page.products.oem"/></a></li>
                  </ul>
                </li>
                <li><a href="news.htm"><s:text name="page.news"/></a></li>
                <li><a href="research.htm"><s:text name="page.research"/></a></li>
                <li class="active"><a href="#"><s:text name="page.contract"/></a></li>
              </ul>

               <ul class="nav navbar-nav navbar-right">
              <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown"><s:text name="page.language"/><span class="caret"></span></a>
                  <ul class="dropdown-menu" role="menu">
                    <li><a href="change2.htm?languageName=cn"><s:text name="page.chinese"/></a></li>
                    <li><a href="change2.htm?languageName=en"><s:text name="page.english"/></a></li>
                  </ul>
                </li>
              </ul>

            </div>
        </div>

        <div class="panel panel-default">
          <div class="panel-heading"><s:text name="page.contract.address"/></div>
          <div class="panel-body">
            	无锡市滨湖区十八湾路288号
          </div>
        </div>

        <div class="panel panel-default">
          <div class="panel-heading"><s:text name="page.contract.tel"/></div>
          <div class="panel-body">
            0510-85188225<br><br>
            <a href="www.cimasci.com">www.cimasci.com</a>
          </div>
        </div>
        
         <div class="panel panel-default">
          <div class="panel-heading"><s:text name="page.message"/></div>
          <div class="panel-body">
          
			<form action="leaveMessage.htm" method="post" class="form-horizontal"> 
			  <div class="form-group">
			    <label for="message.email" class="col-sm-1 control-label"><s:text name="page.message.email"/></label>
			    <div class="col-sm-8">
			      <input name="message.email" id="message.email" type="email" class="form-control" placeholder=<s:text name="page.message.email"/> required autofocus>
			    </div>
			  </div>
			  <div class="form-group">
			    <label for="message.phone" class="col-sm-1 control-label"><s:text name="page.message.phone"/></label>
			    <div class="col-sm-8">
			      <input name="message.phone" id="message.phone" type="tel" class="form-control" placeholder=<s:text name="page.message.phone"/> required>
			    </div>
			  </div>
			   <div class="form-group">
			    <label for="message.personName" class="col-sm-1 control-label"><s:text name="page.message.personname"/></label>
			    <div class="col-sm-8">
			      <input name="message.personName" id="message.personName" type="text" class="form-control" placeholder=<s:text name="page.message.personname"/> >
			    </div>
			  </div>
			   <div class="form-group">
			    <label for="message.companyName" class="col-sm-1 control-label"><s:text name="page.message.companyname"/></label>
			    <div class="col-sm-8">
			      <input name="message.companyName" id="message.companyName" type="text" class="form-control" placeholder=<s:text name="page.message.companyname"/> >
			    </div>
			  </div>
			   <div class="form-group">
			    <label for="message.content" class="col-sm-1 control-label"><s:text name="page.message.content"/></label>
			    <div class="col-sm-8">
			      <textarea name="message.content" class="form-control" rows="3" placeholder=<s:text name="page.message.content"/> required></textarea>
			    </div>
			  </div>
			  
			  <div class="form-group">
			    <div class="col-sm-offset-4 col-sm-8">
			      <button type="submit" class="btn btn-default"><s:text name="page.button.submit"/></button>
			    </div>
			  </div>
			</form>
			
          </div>
        </div>

      <hr class="featurette-divider">
          <!-- FOOTER -->
      <footer>
        <p>&copy; 2016 Cima Science Co.,Ltd &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>

    </div><!-- /.container -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${ctx}/js/jquery.min.js"></script>
    <script src="${ctx}/js/bootstrap.min.js"></script>
    <script src="${ctx}/js/docs.min.js"></script>
  </body>
</html>