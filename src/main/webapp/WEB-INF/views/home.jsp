<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>
<spring:url value="resources/static" var="resources" />

<section class="home">
    <section id="carouselPrdx" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselPrdx" data-slide-to="0" class="active"></li>
            <li data-target="#carouselPrdx" data-slide-to="1"></li>
            <li data-target="#carouselPrdx" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img class="d-block w-100" src="${resources}/images/rocks.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="${resources}/images/traffic.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="${resources}/images/sky.jpg" alt="Third slide">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselPrdx" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselPrdx" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </section>

    <section class="row content-padding content-margin-top">
        <div class="col-sm-12 section-header text-center">
            ${headerRef1}
        </div>
        <div class="col-sm-12 text-center">
            ${contentRef1}
        </div>
    </section>

    <section class="row content-padding content-margin-top">
        <div class="col-sm-12">
            <img class="d-block w-100 img-radius" style="height: ${imgHightSizeRef2};" src="${imgPathRef2}" alt="${imgNameRef2}">
        </div>
    </section>

    <section class="row content">
        <div class="col-sm-12">
            <p>${contentRef3}</p>
        </div>
    </section>

    <section class="row content">
        <div class="col-sm-6">
            <img class="d-block w-100 img-radius" src="${imgPathRef4}"
                alt="${imgNameRef4}">
        </div>
        <div class="col-sm-6">
            <h3 class="pb-1 mb-2 border-bottom"><span class="text-primary">${headerRef4}</span></h3>
            <div class="mb-3">
                <div class="mb-1"><strong>${contentRef4_1_strong}</strong></div>
                <div>${contentRef4_1_desc}</div>
            </div>
            <div class="mb-3">
                <div class="mb-1"><strong>${contentRef4_2_strong}</strong></div>
                <div>${contentRef4_2_desc}</div>
            </div>
            <div class="mb-3">
                <div class="mb-1"><strong>${contentRef4_3_strong}</strong></div>
                <div>${contentRef4_3_desc}</div>
            </div>
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