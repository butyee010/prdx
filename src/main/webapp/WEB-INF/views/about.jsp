<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>
<section class="about">
        <section class="row content" style="padding-top: 0">
            <div class="col-sm-12">
                <h3><label class="label-header text-primary">${aboutBean.contentHeader1}</label></h3>
                <p class="text-white" style="font-size: 18px;">${aboutBean.contentDesc1}</p>
            </div>
        </section>
        <section class="row content">
            <div class="col-sm-4">
                <h3><label class="label-header text-primary">${aboutBean.contentHeader2}</label></h3>
                <p class="text-white" style="font-size: 18px;">${aboutBean.contentDesc2}</p>
            </div>
            <div class="col-sm-8">
                <h3><label class="label-header text-primary">${aboutBean.contentHeader3}</label></h3>
                <p class="text-white" style="font-size: 18px;">${aboutBean.contentDesc3}</p>
            </div>
        </section>
        <section class="row content" style="padding-top: 0">
            <div class="col-sm-12">
                <h3><label class="label-header text-primary">${aboutBean.contentHeader4}</label></h3>
                <p class="text-white" style="font-size: 18px;">${aboutBean.contentDesc4}</p>
            </div>
        </section>
    </section>