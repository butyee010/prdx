<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>

<section class="contact">
    <div class="map-container">
        <div class="placeDiv">
            <div class="placecard__container">

                <div class="placecard__left">
                    <p class="placecard__business-name">${contactBean.locationName}</p>
                    <p class="placecard__info">${contactBean.locationInfo}</p>
                    <a class="placecard__view-large" target="_blank" href="${contactBean.directLargeMapUrl}"
                        id="A_41">View larger map</a>
                </div> <!-- placecard__left -->

                <div class="placecard__right">
                    <a class="placecard__direction-link" target="_blank" href="${contactBean.directUrl}"
                        id="A_9">
                        <div class="placecard__direction-icon"></div>
                        Directions
                    </a>
                </div> <!-- placecard__right -->
            </div> <!-- placecard__container -->
        </div> <!-- placeDiv -->
    </div> <!-- map-container -->
    <div id="map" style="height: 500px;"></div>
    <div class="location-header text-primary">
        <p>${contactBean.locationName}</p>
    </div>
    <section class="row content" style="padding-top: 0;">
        <div class="col-sm-12">
            <p> 
                <span class="text-primary">Address:</span>&nbsp;<span class="text-white">${contactBean.address}</span><br>
                <span class="text-primary">Telephone:</span>&nbsp;<span class="text-white">${contactBean.tel}</span><br>
                <span class="text-primary">E-mail:</span>&nbsp;<span class="text-white">${contactBean.email}</span>
            </p>
        </div>
    </section>
</section>

<script type='text/javascript'>
    $(document).ready(function () {
        function initMap() {
            var latLong = {
                lat: ${contactBean.latitude},
                lng: ${contactBean.longitude}
            };
            var map = new google.maps.Map(document.getElementById('map'), {
                center: latLong,
                zoom: ${contactBean.mapZoom}
            });
            var marker = new google.maps.Marker({
                position: latLong,
                map: map,
                title: '${contactBean.locationName}'
            });
        }
        initMap();
    });
</script>