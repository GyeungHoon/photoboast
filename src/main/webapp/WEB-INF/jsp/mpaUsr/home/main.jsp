<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle"
	value="<span><i class='fas fa-home'></i></span> <span>HOME</span>" />

<%@ include file="../common/head.jspf"%>


<section class="slide_center">
	<div class="slide_item_v1"></div>
	<div class="slide_item_v2"></div>
</section>


<section>
	<ul class="paser">
		<li onClick=(pager(0))>1</li>
		<li onClick=(pager(1))>2</li>
		<li onClick=(pager(2))>3</li>
	</ul>
</section>


<%@ include file="../common/foot.jspf"%>