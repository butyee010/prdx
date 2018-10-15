<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>
<spring:url value="resources/static" var="resources" />

<section class="home">
    <section id="carouselPrdx" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
        	<c:if test="${not empty homeBean.carouselList}">
				<% int i = 0; 
				   boolean frist = true;
				%>
				<c:forEach var="carousel" items="${homeBean.carouselList}">
					<c:choose>
						<c:when test="${frist}">
							<li data-target="#carouselPrdx" data-slide-to="<%=i%>" class="active"></li>
						</c:when>
						<c:otherwise>
							<li data-target="#carouselPrdx" data-slide-to="<%=i%>"></li>
						</c:otherwise>
						</c:choose>
				<% frist = false;
				   i++;
				 %>
				</c:forEach>
			</c:if>
        </ol>
        <div class="carousel-inner">
        	<c:if test="${not empty homeBean.carouselList}">
				<% boolean frist = true; %>
				<c:forEach var="carousel" items="${homeBean.carouselList}">
					<c:choose>
						<c:when test="${frist}">
							<div class="carousel-item active">
				                <img class="d-block w-100" src="${carousel.imgPath}" alt="${carousel.imgName}">
				            </div>
						</c:when>
						<c:otherwise>
							<div class="carousel-item">
				                 <img class="d-block w-100" src="${carousel.imgPath}" alt="${carousel.imgName}">
				            </div>
						</c:otherwise>
						</c:choose>
				<% frist = false; %>
				</c:forEach>
			</c:if>
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
        <div class="col-sm-6">
            <img class="d-block w-100 img-radius" src="${imgPathRef3}"
                alt="${imgNameRef3}">
        </div>
        <div class="col-sm-6">
            <h3 class="pb-1 mb-2 border-bottom"><span class="text-primary">${headerRef3}</span></h3>
            <div class="mb-3">
                <div>${contentRef3}</div>
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