<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>小张.IT网上电子购物网站</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="viewport" content="width=device-width, initial-scale=1">		
    	<link rel="stylesheet" href="lib/bootstrap/css/bootstrap.min.css" />
    	<link rel="stylesheet" href="css/justified-nav.css" />
    	<link rel="stylesheet" href="css/carousel.css" />
    	<style>
        .col-md-4{
          width: 33.33333333%;
          height: 350px;
          margin-top: 10px;
          margin-bottom: 20px;
          padding-top: 10px;
        }
        .col-md-4 p{
          height: 60px;
        }
      </style>
	</head>
	<body>
	<!--导航开始-->
    <div class="navbar-wrapper">
      <div class="container">
        <nav class="navbar navbar-inverse navbar-static-top">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">小张.IT网上电子购物网站</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="#">小张.IT网上电子购物网站</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
                <li class="active"><a href="#">首页</a></li>
                <li><a href="#about">关于我们</a></li>
                <li><a href="#contact">联系我们</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">商品类型 <span class="caret"></span></a>
                  <ul class="dropdown-menu">
                    <c:forEach items="${types}" var="type">
                    <li><a href="${pageContext.request.contextPath}/MainServlet?typeid=${type.id}">${type.typeName}</a></li>
                    </c:forEach>
                  </ul>
                </li>
              </ul>
            </div>
          </div>
        </nav>
      </div>
    </div>
    <!--作者:张不凡
        时间:2018-06-04
      -->
    <!--导航结束-->
    
    
	
	<!-- 轮播开始 -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
      <c:forEach items="${cs}"  var="car" varStatus="s">
      	<c:if test="${s.index==0}">
        <div class="item active">
          <img class="first-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>${car.title}</h1>
			   <img src="${pageContext.request.contextPath}/${car.imgpath}" class="img-responsive" />
            </div>
          </div>
        </div>
        </c:if>
       <c:if test="${s.index>0}">
        <div class="item">
          <img class="second-slide" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="First slide">
          <div class="container">
            <div class="carousel-caption">
              <h1>${car.title}</h1>
			   <img src="${pageContext.request.contextPath}/${car.imgpath}" class="img-responsive" />
            </div>
          </div>
        </div>
        </c:if>      
        </c:forEach>
        
      </div>
      <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
    <!-- 
    	作者:张不凡
    	时间:2016-06-08
     -->>
	<!-- 轮播结束 -->
	
	
	
		
<!--商品列表显示开始-->
	<div class="container marketing">
      <div class="row">
      	<c:forEach items="${goods}"  var="good">
        <div class="col-md-4">
          <img  class="img-rounded" src="${pageContext.request.contextPath}/${good.imgpath}" alt="${good.name}" width="140" height="140">
          <h2>${good.name}</h2>
          <p>${good.describe}</p>
          <p><a class="btn btn-danger" href="#" role="button">添加到购物 &raquo;</a></p>
        </div>
        </c:forEach>
      </div>	    
      
	</div>		

  <!--分割线-->	
  <hr class="featurette-divider">
  	
  <!-- FOOTER -->
  <footer>
    <p class="pull-right"><a href="#">回到顶部</a></p>
  </footer>
  	    	
	
	
	
	
	
	
  </div>
	<script type="text/javascript" src="lib/jquery/jquery-1.9.1.js" ></script>
	<script type="text/javascript" src="lib/bootstrap/js/bootstrap.min.js" ></script>
	</body>
</html>
