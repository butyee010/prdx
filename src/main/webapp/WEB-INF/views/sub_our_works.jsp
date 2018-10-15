<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>
<spring:url value="resources/static" var="resources" />

<section class="sub-our-works">
    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="#" onclick="menuPortal.menuPortalAction('PAGE_OUR_WORKS')">Our Works</a></li>
            <li class="breadcrumb-item active" aria-current="page">Our Works Item</li>
        </ol>
    </nav>
    <section class="row content section-content" style="padding-top: 0">
        <div class="col-sm-4">
            <img class="d-block w-100 img-radius" src="${resources}/images/sky.jpg" alt="..." onclick="ourWorks.openJssorSubOurWorks()">
        </div>
        <div class="col-sm-8 block-content">
            <label class="label-header">Header</label>
            <p>We are a fast growing, established company focused on delivering best-of-breed software
                solutions. With the strategy focusing on building clientsâ relationship as âthe
                partnerâ together with our robust research and certified development teams, our company
                offers world class professional services including software development, enterprise
                computing consulting and staff outsourcing.</p>
        </div>
    </section>
    <section class="row content section-content" style="padding-top: 0">
        <div class="col-sm-4">
            <img class="d-block w-100 img-radius" src="${resources}/images/sky.jpg" alt="...">
        </div>
        <div class="col-sm-8 block-content">
            <label class="label-header">Header</label>
            <p>We are a fast growing, established company focused on delivering best-of-breed software
                solutions. With the strategy focusing on building clientsâ relationship as âthe
                partnerâ together with our robust research and certified development teams, our company
                offers world class professional services including software development, enterprise
                computing consulting and staff outsourcing.</p>
        </div>
    </section>
    <section class="row content section-content" style="padding-top: 0">
        <div class="col-sm-4">
            <img class="d-block w-100 img-radius" src="${resources}/images/sky.jpg" alt="...">
        </div>
        <div class="col-sm-8 block-content">
            <label class="label-header">Header</label>
            <p>We are a fast growing, established company focused on delivering best-of-breed software
                solutions. With the strategy focusing on building clientsâ relationship as âthe
                partnerâ together with our robust research and certified development teams, our company
                offers world class professional services including software development, enterprise
                computing consulting and staff outsourcing.</p>
        </div>
    </section>
</section>