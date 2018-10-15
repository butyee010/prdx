<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>
<spring:url value="/resources/static" var="resources" />

<script type="text/javascript" src="${resources}/js/app/portal/gallery.js"></script>

<section class="gallery-container">
        <div class="tz-gallery">
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <a class="lightbox-thumbnail" onclick="gallery.openSubGalley()">
                            <img src="${resources}/images/park.jpg" alt="Park">
                        </a>
                        <div class="caption">
                            <h3>Thumbnail label</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <a class="lightbox-thumbnail" href="${resources}/images/bridge.jpg">
                            <img src="${resources}/images/bridge.jpg" alt="Bridge">
                        </a>
                        <div class="caption">
                            <h3>Thumbnail label</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <a class="lightbox-thumbnail" href="${resources}/images/tunnel.jpg">
                            <img src="${resources}/images/tunnel.jpg" alt="Tunnel">
                        </a>
                        <div class="caption">
                            <h3>Thumbnail label</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <a class="lightbox-thumbnail" href="${resources}/images/coast.jpg">
                            <img src="${resources}/images/coast.jpg" alt="Coast">
                        </a>
                        <div class="caption">
                            <h3>Thumbnail label</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <a class="lightbox-thumbnail" href="${resources}/images/rails.jpg">
                            <img src="${resources}/images/rails.jpg" alt="Rails">
                        </a>
                        <div class="caption">
                            <h3>Thumbnail label</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6 col-md-4">
                    <div class="thumbnail">
                        <a class="lightbox-thumbnail" href="${resources}/images/traffic.jpg">
                            <img src="${resources}/images/traffic.jpg" alt="Traffic">
                        </a>
                        <div class="caption">
                            <h3>Thumbnail label</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor
                                incididunt ut labore et dolore magna aliqua.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>