<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>
<spring:url value="resources/static" var="resources" />

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

    <script type='text/javascript'>
        $(document).ready(function () {
            $('#carouselExampleIndicators').carousel({
                interval: 2000
            });
        });
    </script>