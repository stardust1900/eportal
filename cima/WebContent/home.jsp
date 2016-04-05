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
    <meta name="keywords" content="无锡西玛生物科技有限公司">	
	<meta name="description" content="无锡西玛生物科技有限公司">

    <meta name="author" content="">
    <link rel="icon" href="${ctx}/favicon.ico">

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
    <link href="${ctx}/css/carousel.css" rel="stylesheet">
     <style type="text/css">  
        .navbar .nav > li .dropdown-menu {  
            margin: 0;  
        }  
        .navbar .nav > li:hover .dropdown-menu {  
            display: block;  
        } 
        * {margin:0;padding:0;}
        .wrap,.box{margin-bottom:10px;}
        .wrap ul,.wrap .ul{overflow:hidden;clear:both;*zoom:1;}
        .wrap li,.wrap .li{list-style:none;width:140px;height:140px;padding:5px;margin:2px 5px 10px 5px;font:700 30px/80px Arial;text-align:center;}
        
        .news {
			height: 160px;
			width: 300px;
			font-size: 11px;
			-moz-box-shadow: 1px 1px 5px #999;
			-webkit-box-shadow: 1px 1px 5px #999;
			box-shadow: 1px 1px 5px #999;
			overflow: hidden;
		}
		.news .container {
			margin: 0;
			padding: 0;
			overflow: hidden;
		}
		.news .container li {
			width: 285px;
			margin: 0 0 0 5px;
			padding: 5px 0 5px 0;
			border-bottom: 1px dotted #999;
		}
		.news .container li a.title{
			color: #f9690e;
		}
		
		.pinned {
		  width: 160px;
		}
		
    </style> 
  </head>
<!-- NAVBAR
================================================== -->
  <body>
    <div class="navbar-wrapper">
      <div class="container">

        <div class="navbar navbar-inverse navbar-static-top" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#"><s:text name="page.brand"/></a>
            </div>
            <div class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="#"><s:text name="page.home"/></a></li>
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
                <li><a href="contact.htm"><s:text name="page.contract"/></a></li>
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
        </div>

      </div>
    </div>


    <!-- Carousel
    ================================================== -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="item active">
          <img src="${ctx}/img/1.jpg" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>Science &Technology Innovation Changes Your Life.</h1>

              <!-- <p><a class="btn btn-lg btn-primary" href="#" role="button">更多</a></p> -->
            </div>
          </div>
        </div>
        <div class="item">
          <img src="${ctx}/img/2.jpg" alt="Second slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>最优质的产品和服务</h1>
              <p>品质保证 值得信赖</p>
              <!-- <p><a class="btn btn-lg btn-primary" href="#" role="button">更多</a></p> -->
            </div>
          </div>
        </div>
        <div class="item">
          <img src="${ctx}/img/3.jpg" alt="Third slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>科技创新创造新生活</h1>
              <p>突破创新 精益求精</p>
              <!-- <p><a class="btn btn-lg btn-primary" href="#" role="button">更多</a></p> -->
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
    </div><!-- /.carousel -->



    <!-- Marketing messaging and featurettes
    ================================================== -->
    <!-- Wrap the rest of the page in another container to center all the content. -->

    <div class="container marketing">

      <!-- Three columns of text below the carousel -->
      <div class="row">
        <div class="col-lg-4 news" id="newsMarquee">
          <ul class="container">
           <s:iterator value="newsList" var="news"> 
           <li>
				<a class="title" href="showNewsDetail.htm?newsId=<s:property value="id"/>"><s:property value="title"/></a>
				<br><a href="showNewsDetail.htm?newsId=<s:property value="id"/>"><s:property value="summary"/></a>				
			</li>
           </s:iterator>
		</ul>
		
        </div><!-- /.col-lg-4 -->
        <div class="col-lg-8 wrap" id="productsMarquee">
           <ul>
           <s:iterator value="products0" var="product"> 
           	<li><a href='showProductDetail.htm?productId=<s:property value="id"/>' title='<s:property value="name"/>'><img class="img-thumbnail" src='${ctx}/pictures/<s:property value="imgPath"/>' alt='<s:property value="name"/>' style="width: 140px; height: 140px;"></a></li>
           </s:iterator>
	      </ul>
        </div><!-- /.col-lg-4 -->
      </div><!-- /.row -->


      <!-- START THE FEATURETTES -->

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">技术服务 </h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive" src="${ctx}/img/7.jpg" alt="Generic placeholder image">
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-5">
          <img class="featurette-image img-responsive" src="${ctx}/img/8.jpg" alt="Generic placeholder image">
        </div>
        <div class="col-md-7">
          <h2 class="featurette-heading">营养化学 </h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
      </div>

      <hr class="featurette-divider">

      <div class="row featurette">
        <div class="col-md-7">
          <h2 class="featurette-heading">植物提取</h2>
          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
        </div>
        <div class="col-md-5">
          <img class="featurette-image img-responsive" src="${ctx}/img/9.jpg" alt="Generic placeholder image">
        </div>
      </div>
      
	 <%-- <div class="col-md-1 col-md-offset-11">
		<div class="pinned">
		<div class="caption text-center">
		 <h3><s:text name="page.contract"/></h3>
		 </div>
		  <a href="http://wpa.qq.com/msgrd?v=3&uin=15912515&site=qq&menu=yes" target="_blank"><img class="featurette-image img-responsive" src="${ctx}/img/qq.png" alt="Generic placeholder image"></a>  
		</div>
	</div> --%>
	
      <hr class="featurette-divider">

      <!-- /END THE FEATURETTES -->


      <!-- FOOTER -->
      <footer>
        <p class="pull-right"><a href="#">Back to top</a></p>
        <p>&copy; 2016 Cima Science Co.,Ltd &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
      </footer>

    </div><!-- /.container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${ctx}/js/jquery.min.js"></script>
    <script src="${ctx}/js/bootstrap.min.js"></script>
    <script src="${ctx}/js/docs.min.js"></script>
    <script src="${ctx}/js/marquee.js"></script>
    <script src="${ctx}/js/jquery.smartmarquee.js"></script>
    <script src="${ctx}/js/jquery.pin.min.js"></script>
    <script type="text/javascript">
    	$(document).ready(function () {
    	   $('#productsMarquee').marquee({
	            auto: true,
	            interval: 3000,
	            speed: 500,
	            showNum: 5,
	            stepLen: 2
        	});

    	   $("#newsMarquee").smartmarquee({
    			  duration: 1000,   
    			  loop : true,      
    			  interval : 2000, 
    			  axis : "vertical"
    		});
    	   
    	   //$(".pinned").pin({containerSelector: "body"})
    	});
    </script>
  </body>
</html>
