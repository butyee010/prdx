<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>
<spring:url value="/resources/static" var="resources" />

<script type="text/javascript" src="${resources}/js/app/portal/ourWorks.js"></script>

<section class="our-works">

	<c:if test="${not empty ourWorksList}">
		<% int i = 1; 
		   boolean top = true;
		%>
		<c:forEach var="ourWorks" items="${ourWorksList}">
			<c:choose>
				<c:when test="${i % 3 == 1}">
					<c:choose>
						<c:when test="${top}">
							<section class="row content section-content" style="padding-top: 0">
								<div class="col-sm-4 thumbnail">
						            <div>
						                <img class="d-block w-100 img-radius" onclick="ourWorks.openSubOurWorks()" src="${ourWorks.imgPath}" alt="${ourWorks.imgName}">
						            </div>
						            <div class="content">
						                <label class="big-font">${ourWorks.header}</label>
						            </div>
						            <div class="normal-font padding-left">
						                <p>${ourWorks.content}</p>
						            </div>
						        </div>
						    </section>
						</c:when>
						<c:otherwise>
							<section class="row content section-content">
								<div class="col-sm-4 thumbnail">
							            <div>
							                <img class="d-block w-100 img-radius" onclick="ourWorks.openSubOurWorks()" src="${ourWorks.imgPath}" alt="${ourWorks.imgName}">
							            </div>
							            <div class="content">
							                <label class="big-font">${ourWorks.header}</label>
							            </div>
							            <div class="normal-font padding-left">
							                <p>${ourWorks.content}</p>
							            </div>
							        </div>
							    </section>
						</c:otherwise>
					</c:choose>
				</c:when>
				<c:otherwise>
					<section class="row content section-content">
						<div class="col-sm-4 thumbnail">
							<div>
								<img class="d-block w-100 img-radius" onclick="ourWorks.openSubOurWorks()" src="${ourWorks.imgPath}" alt="${ourWorks.imgName}">
							</div>
							<div class="content">
								<label class="big-font">${ourWorks.header}</label>
							</div>
							<div class="normal-font padding-left">
								<p>${ourWorks.content}</p>
							</div>
						</div>
					</section>
				</c:otherwise>
			</c:choose>
			<% top = false;
			   i++; 
			%>
		</c:forEach>
	</c:if>
</section>