<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>
<!-- google map -->
<!-- <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCdl-muJF6qgXrgLGrWXHdp5JXgXExIsrk"
async defer></script> -->

<section class="contact">
        <div class="map-container">
                <div class="placeDiv">
                    <div class="placecard__container">
            
                      <div class="placecard__left">
                        <p class="placecard__business-name">Phloen Chit</p>
                        <p class="placecard__info">BTS Phloen Chit</p>
                        <a class="placecard__view-large" target="_blank" href="https://www.google.co.th/maps/place/Phloen+Chit/@13.74311,100.5466183,17z/data=!3m1!4b1!4m5!3m4!1s0x30e29edcfb15ae2b:0xb3f399fbdb9ddf6c!8m2!3d13.74311!4d100.548807" id="A_41">View larger map</a>
                      </div> <!-- placecard__left -->
            
                      <div class="placecard__right">
                          <a class="placecard__direction-link" target="_blank" href="https://www.google.co.th/maps/dir//Phloen+Chit,+Khwaeng+Lumphini,+Khet+Pathum+Wan,+Krung+Thep+Maha+Nakhon+10330/@13.74311,100.5466183,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x30e29edcfb15ae2b:0xb3f399fbdb9ddf6c!2m2!1d100.548807!2d13.74311"
                          id="A_9">
                              <div class="placecard__direction-icon"></div>
                              Directions
                          </a>
                      </div> <!-- placecard__right -->
                    </div> <!-- placecard__container -->
                </div> <!-- placeDiv -->
            </div> <!-- map-container -->
            <div id="map" style="height: 100%;"></div>
            <div class="location-header"><p>Phloen Chit</p></div>
            <section class="row content" style="padding-top: 0;">
                    <div class="col-sm-12">
                        <p>We are a fast growing, established company focused on delivering best-of-breed software solutions. With the strategy focusing on building clientsâ relationship as âthe partnerâ together with our robust research and certified development teams, our company offers world class professional services including software development, enterprise computing consulting and staff outsourcing.</p>
                    </div>
            </section>
</section>

<script type='text/javascript'>
    $(document).ready(function () {
        function initMap() {
            var latLong = {lat: 13.7431, lng: 100.5488};
            var map = new google.maps.Map(document.getElementById('map'), {
            center: latLong,
            zoom: 15
            });
            var marker = new google.maps.Marker({
                position: latLong,
                map: map,
                title: 'Phloen Chit'
            });
        }
        initMap();
    });
</script>