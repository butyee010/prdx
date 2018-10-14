<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>
<spring:url value="/resources/static" var="resources" />

<section class="container gallery-container">
    <div class="tz-gallery">
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="${resources}/images/park.jpg">
                        <img src="${resources}/images/park.jpg" alt="Park">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="${resources}/images/bridge.jpg">
                        <img src="${resources}/images/bridge.jpg" alt="Bridge">
                    </a>
                </div>
                <div class="col-sm-12 col-md-4">
                    <a class="lightbox" href="${resources}/images/tunnel.jpg">
                        <img src="${resources}/images/tunnel.jpg" alt="Tunnel">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="${resources}/images/coast.jpg">
                        <img src="${resources}/images/coast.jpg" alt="Coast">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="${resources}/images/rails.jpg">
                        <img src="${resources}/images/rails.jpg" alt="Rails">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="${resources}/images/traffic.jpg">
                        <img src="${resources}/images/traffic.jpg" alt="Traffic">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="${resources}/images/rocks.jpg">
                        <img src="${resources}/images/rocks.jpg" alt="Rocks">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="${resources}/images/benches.jpg">
                        <img src="${resources}/images/benches.jpg" alt="Benches">
                    </a>
                </div>
                <div class="col-sm-6 col-md-4">
                    <a class="lightbox" href="${resources}/images/sky.jpg">
                        <img src="${resources}/images/sky.jpg" alt="Sky">
                    </a>
                </div>
            </div>
    </section>


<!--     <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.8.1/baguetteBox.min.js"></script>
 -->    
    <script>
        $(document).ready(function () {
            baguetteBox.run('.tz-gallery');
        });
    </script>