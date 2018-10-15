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
                <img class="d-block w-100" src="${resources}/images/rocks.jpg" alt="First slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="${resources}/images/traffic.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
                <img class="d-block w-100" src="${resources}/images/sky.jpg" alt="Third slide">
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

    <section class="row content-padding content-margin-top">
        <div class="col-sm-12 section-header text-center">
            Header
        </div>
        <div class="col-sm-12 text-center">
            We are a fast growing, established company focused on delivering best-of-breed software
        </div>
    </section>

    <section class="row content-padding content-margin-top">
        <div class="col-sm-12">
            <img class="d-block w-100 img-radius" style="height: 300px;" src="${resources}/images/sky.jpg" alt="...">
        </div>
    </section>

    <section class="row content">
        <div class="col-sm-12">
            <p>We are a fast growing, established company focused on delivering best-of-breed software solutions. With
                the strategy focusing on building clients’ relationship as “the partner” together with our robust
                research and certified development teams, our company offers world class professional services
                including software development, enterprise computing consulting and staff outsourcing.</p>
        </div>
    </section>

    <section class="row content">
        <div class="col-sm-6">
            <img class="d-block w-100 img-radius" src="https://www.peerpower.co.th/img/home/our-services-for-borrower.jpg"
                alt="...">
        </div>
        <div class="col-sm-6">
            <h3 class="pb-1 mb-2 border-bottom">ตัวเลือกที่ดีกว่า<span class="text-primary">ของ SME</span></h3>
            <div class="mb-3">
                <div class="mb-1"><strong>สะดวกกว่า</strong></div>
                <div>ไม่ต้องเดินทางไปสาขา การสมัครทำผ่านช่องทางออนไลน์</div>
            </div>
            <div class="mb-3">
                <div class="mb-1"><strong>รวดเร็วกว่า</strong></div>
                <div>สมัครง่ายภายในไม่กี่ขั้นตอน ทราบผลอนุมัติภายใน 3 วันทำการ</div>
            </div>
            <div class="mb-3">
                <div class="mb-1"><strong>ยืดหยุ่นกว่า</strong></div>
                <div>ผู้ขอสินเชื่อไม่ต้องใช้หลักทรัพย์ในการค้ำประกัน
                    และสามารถชำระเงินคืนก่อนกำหนดในสัญญาโดยไม่เสียค่าธรรมเนียม</div>
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