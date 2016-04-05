<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%> 
<%@ taglib prefix="s" uri="/struts-tags"  %> 
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/"; 
%> 


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"> 
<html> 
  <head> 
    <title>My JSP 'Internationalization.jsp' starting page</title> 
    
<meta http-equiv="pragma" content="no-cache"> 
<meta http-equiv="cache-control" content="no-cache"> 
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"> 
<meta http-equiv="description" content="This is my page"> 

  </head> 
  
  <body> 
<!-- 测试第一种 对应action 方法ChangeLanguage()   request_locale--> 
    <a href="<%=basePath%>change.htm?request_locale=zh_CN">中文简体</a> 
  <a href="<%=basePath%>change.htm?request_locale=zh_TW">中文繁体</a> 
  <a href="<%=basePath%>change.htm?request_locale=en_US">English</a><br> 

<!-- 测试测试自定义参数   对应action 方法ChangeLanguage2() languageName--> 
<a href="<%=basePath%>change2.htm">中文简体</a> 
  <a href="<%=basePath%>change2.htm?languageName=ft">中文繁体</a> 
  <a href="<%=basePath%>change2.htm?languageName=en">English</a><br> 

  <s:text name="language"/><input name="language"> 
    <s:i18n name="name"/><input name="name"> 
    <s:i18n name="age"/><input name="age"> 
    <s:i18n name="sex"/><input name="sex"> 
    <s:text name="page.home"/>
    
  </body> 
</html> 