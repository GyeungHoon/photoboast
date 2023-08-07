<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="pageTitle"
	value="<span><i class='fas fa-home'></i></span> <span>HOME</span>" />

<%@ include file="../common/head.jspf"%>


<div class="slide_wrapper">
		<ul class="slides">
			<li>slide 01</li>
			<li>slide 02</li>
			<li>slide 03</li>
			<li>slide 04</li>
			<li>slide 05</li>
		</ul>
	</div>
	
	<p class="controls">
	<span class="prev">prev</span>
	<span class="next">next</span>
</p>
	

<section>
	<ul class="paser">
		<li onClick=(pager(0))>1</li>
		<li onClick=(pager(1))>2</li>
		<li onClick=(pager(2))>3</li>
		<li onClick=(pager(3))>4</li>	
		<li onClick=(pager(4))>5</li>		
	</ul>
</section>


<%@ include file="../common/foot.jspf"%>