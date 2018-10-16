<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.util.Random"%>
<% 	
	// Check if this is where the JSESSIONID is being set
	if (response.containsHeader("SET-COOKIE"))
	{
	   String sessionid = request.getSession().getId();
	   response.setHeader("SET-COOKIE", "JSESSIONID=" + sessionid + "; Path=/; HttpOnly; secure");
	}
	request.setCharacterEncoding("UTF-8");
	response.setHeader("Cache-Control","no-cache"); //HTTP 1.1 
	response.setHeader("Pragma","no-cache"); //HTTP 1.0 
	response.setDateHeader ("Expires", 0);
	Random rn = new Random();
	int random = rn.nextInt(1000)+1;
%>
<spring:url value="/resources/static" var="resources" />
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <title>Application</title>

    <link href="https://fonts.googleapis.com/css?family=Droid+Sans:400,700" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.css">

    <link rel="stylesheet" href="${resources}/css/theme/main.css?r=<%=random%>">


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.3.1.js" integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
        crossorigin="anonymous"></script>

    <script type="text/javascript" src="resources/static/js/vendor/jquery-ui-1.12.1.js"></script>

    <!-- script core -->
    <script type="text/javascript" src="${resources}/js/app/core/core.js?r=<%=random%>"></script>
    <script type="text/javascript" src="${resources}/js/app/core/menuPortal.js?r=<%=random%>"></script>
    <script type="text/javascript" src="${resources}/js/app/core/moment.js?r=<%=random%>"></script>
    <script type="text/javascript" src="${resources}/js/app/core/session.js?r=<%=random%>"></script>
    <script type="text/javascript" src="${resources}/js/vendor/jssor.slider-27.5.0.min.js?r=<%=random%>"></script>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCdl-muJF6qgXrgLGrWXHdp5JXgXExIsrk"
        async defer></script>
</head>

<body>
    <img alt="test" src="image/a">
</body>

</html>