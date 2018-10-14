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

    <!-- <link rel="stylesheet" href="css/theme/bootstrap.css"> -->
    <link rel="stylesheet" href="${resources}/css/theme/main.css">
    <link rel="stylesheet" href="${resources}/css/theme/gallery.css">


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
    <script type="text/javascript" src="${resources}/js/app/core/core.js"></script>
    <script type="text/javascript" src="${resources}/js/app/core/menuPortal.js"></script>
    <script type="text/javascript" src="${resources}/js/app/core/moment.js"></script>
    <script type="text/javascript" src="${resources}/js/app/core/session.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCdl-muJF6qgXrgLGrWXHdp5JXgXExIsrk"
        async defer></script>
</head>

<body>
    <div class="">
        <div class="page-header row">
            <div class="col-sm-4">
                <div class="brand">
                    <img class="logo" src="${resources}/images/paradise-ex-logo3.png" alt="paradise-logo" onclick="menuPortal.menuPortalAction('PAGE_HOME')">
                </div>
            </div>
            <div class="col-sm-8">
                <nav class="navbar">
                    <ul class="navbar-nav text-uppercase ml-auto">
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" onclick="menuPortal.menuPortalAction('PAGE_ABOUT')">about</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" onclick="menuPortal.menuPortalAction('PAGE_SERVICES')">services</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" onclick="menuPortal.menuPortalAction('PAGE_OUR_WORKS')">our works</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" onclick="menuPortal.menuPortalAction('PAGE_GALLERY')">gallery</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link js-scroll-trigger" onclick="menuPortal.menuPortalAction('PAGE_CONTACT')">contact</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

        <div class="mainContent">
            <div class="container" id="container">
                <section class="home">
                    <section id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img class="d-block w-100" src="${resources}/images/home/rocks.jpg" alt="First slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="${resources}/images/home/traffic.jpg" alt="Second slide">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100" src="${resources}/images/home/sky.jpg" alt="Third slide">
                            </div>
                        </div>
                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </section>
                    <section class="row content">
                        <div class="col-sm-4">
                            <p>We are a fast growing, established company focused on delivering best-of-breed software solutions. With the strategy focusing on building clientsâ relationship as âthe partnerâ together with our robust research and certified development teams, our company offers world class professional services including software development, enterprise computing consulting and staff outsourcing.</p>
                        </div>
                        <div class="col-sm-8">
                            <p>We are a fast growing, established company focused on delivering best-of-breed software solutions. With the strategy focusing on building clientsâ relationship as âthe partnerâ together with our robust research and certified development teams, our company offers world class professional services including software development, enterprise computing consulting and staff outsourcing.</p>
                        </div>
                    </section>
                    <section class="row content" style="padding-top: 0">
                        <div class="col-sm-12">
                            <p>We are a fast growing, established company focused on delivering best-of-breed software solutions. With the strategy focusing on building clientsâ relationship as âthe partnerâ together with our robust research and certified development teams, our company offers world class professional services including software development, enterprise computing consulting and staff outsourcing.</p>
                        </div>
                    </section>
                </section>
            </div>
        </div>

        <div class="page-footer">
            <div class="row content">
                <div class="col-sm-4">
                    contain 1
                </div>
                <div class="col-sm-4">
                    contain 2
                </div>
                <div class="col-sm-4">
                    contain 3
                </div>
            </div>
            <div class="row justify-content-center text-center content">
                    <div class="col-12 col-md-10">
                        <div class="text-grey small mb-1">à¸à¸£à¸´à¸©à¸±à¸ à¹à¸à¸µà¸¢à¸£à¹ à¸à¸²à¸§à¹à¸§à¸­à¸£à¹ à¸à¸³à¸à¸±à¸</div>
                        <div class="text-grey small mb-3"><a href="https://goo.gl/maps/9EMmMLZeNCE2" class="text-grey" target="_blank">à¸­à¸²à¸à¸²à¸£ à¸à¸´à¸¥à¸¥à¸´à¸ à¹à¸®à¹à¸²à¸ªà¹ à¸à¸±à¹à¸ 5 à¹à¸¥à¸à¸à¸µà¹ 1 à¸à¸à¸à¸ªà¸µà¸¥à¸¡ à¹à¸à¸§à¸à¸ªà¸µà¸¥à¸¡ à¹à¸à¸à¸à¸²à¸à¸£à¸±à¸ à¸à¸£à¸¸à¸à¹à¸à¸à¸¯ 10500</a></div>
                        <div class="text-grey small mb-1">Copyright Â© Patipon 2018</div>
                        <div class="social-icons">
                            <a href="https://www.facebook.com/PeerPowerThailand/" target="_blank"><i class="fa fa-facebook-square text-grey" aria-hidden="true"></i></a>
                            <a href="https://www.linkedin.com/company/peer-power-company-limited/" target="_blank"><i class="fa fa-linkedin-square text-grey" aria-hidden="true"></i></a>
                            <a href="https://www.youtube.com/channel/UCzCboQLQ08PMVdIZKc5RtgA" target="_blank"><i class="fa fa-youtube-play text-grey" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
        </div>

        <!-- <div class="spinner">
            <div class="bounce1"></div>
            <div class="bounce2"></div>
            <div class="bounce3"></div>
        </div> -->
    </div>

    <script type='text/javascript'>
        $(document).ready(function () {
            $('#carouselExampleIndicators').carousel({
                interval: 2000
            });
        });
    </script>
</body>

</html>