<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle"
	value="<span><i class='fas fa-home'></i></span> <span>HOME</span>" />

<%@ include file="../common/head.jspf"%>

<section>
	<div class="slide slide_wrap">
		<div class="slide_item item1">1</div>
		<div class="slide_item item2">2</div>
		<div class="slide_item item3">3</div>
		<div class="slide_item item4">4</div>
		<div class="slide_item item5">5</div>
		<div class="slide_prev_button slide_button">◀</div>
		<div class="slide_next_button slide_button">▶</div>
		<ul class="slide_pagination"></ul>
	</div>
</section>


<script src="./slide.js"></script>
<%@ include file="../common/foot.jspf"%>