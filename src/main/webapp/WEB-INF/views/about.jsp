<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>
<section class="about">
        <section class="row content" style="padding-top: 0">
            <div class="col-sm-12">
                <label class="label-header">${contentHeader1}</label>
                <p>${contentDesc1}</p>
            </div>
        </section>
        <section class="row content">
            <div class="col-sm-4">
                <label class="label-header">${contentHeader2}</label>
                <p>${contentDesc2}</p>
            </div>
            <div class="col-sm-8">
                <label class="label-header">${contentHeader3}</label>
                <p>${contentDesc3}</p>
            </div>
        </section>
        <section class="row content" style="padding-top: 0">
            <div class="col-sm-12">
                <label class="label-header">${contentHeader4}</label>
                <p>${contentDesc4}</p>
            </div>
        </section>
        <section class="row content" style="padding-top: 0">
                <div class="col-sm-12">
                    <label class="label-header">${contentHeader5}</label>
                    <p>${contentDesc5}</p>
                </div>
            </section>
    </section>