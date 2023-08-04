<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle"
	value="<span><i></i></span> <span>${board.name} ARTICLE LIST</span>" />

<%@ include file="../common/head.jspf"%>

<h2>${board.name}ARTICLELIST</h2>
<section>
	<div>
		<form action="">
			<input type="hidden" name="boardId" value="${board.id}" />
			<div class="searchSelect">
				<label for="searchKeywordType">
					<span>옵션</span>
				</label>
				<select id="searchKeywordType" name="searchKeywordType">
					<option value="titleAndBody">제목+내용</option>
					<option value="title">제목</option>
					<option value="body">내용</option>
				</select>

				<script>
					const param__searchKeywordType = '${param.searchKeywordType}';
					if (param__searchKeywordType.length > 0) {
						$('.articleListIu_wrap [name="searchKeywordType"]')
								.val('${param.searchKeywordType}');
					}
				</script>
			</div>
			<div>
				<label for="searchKeyword">
					<span>제목</span>
				</label>
				<input value="${param.searchKeyword}" id="searchKeyword"
					name="searchKeyword" type="text" placeholder="검색어를 입력해주세요."
					maxlength="10" />
			</div>

			<div>
				<input type="submit" value="검색" />
			</div>
		</form>

		<div>
			<span>TOTAL ITEMS : </span>
			<span>${totalItemsCount}</span>
			<span>TOTAL PAGES : </span>
			<span>${totalPage}</span>
			<span>CURRENT PAGE : </span>
			<span>${page}</span>
		</div>
		<div>
			<a href="write?boardId=${board.id}">
				<span>
					<i class="fas fa-edit"></i>
				</span>
				<span>글 작성</span>
			</a>
		</div>
	</div>
</section>
<section class="article_list_section">
	<h2>전시관 목록</h2>
	<c:forEach items="${articles}" var="article">
		<div class="article_list_content">
			<c:set var="detailUri" value="../article/detail?id=${article.id}" />
			<!-- 게시물 아이템, first -->

			<div class="article_list_img">
				<a href="${detailUri}"> </a>
			</div>
			<div>
					<h3><a href="${detailUri}">${article.title}</a></h3>
			</div>
			<div class="profile">
				<span class="profile_img">
					<img 
						onerror="${article.writerProfileFallbackImgOnErrorHtmlAttr}"
						src="${article.writerProfileImgUri}" alt="">
				</span>
				<span class="profile_name">${article.extra__writerName}</span>
			</div>
			<div>
				<a href="${detailUri}" title="자세히 보기">
					<span>
						<i class="fas fa-info"></i>
					</span>
					<span>자세히 보기</span>
				</a>
				<a href="#">
					<span>
						<i class="fas fa-edit"></i>
					</span>
					<span>수정</span>
				</a>
				<a onclick="if ( !confirm('삭제하시겠습니까?') ) return false;" href="#">
					<span>
						<i class="fas fa-trash"></i>
					</span>
					<span>삭제</span>
				</a>
			</div>
		</div>
	</c:forEach>

</section>

<section>
	<c:set var="pageMenuArmSize" value="4" />
	<c:set var="startPage"
		value="${page - pageMenuArmSize >= 1  ? page - pageMenuArmSize : 1}" />
	<c:set var="endPage"
		value="${page + pageMenuArmSize <= totalPage ? page + pageMenuArmSize : totalPage}" />
	<c:set var="uriBase" value="?boardId=${board.id}" />
	<c:set var="uriBase"
		value="${uriBase}&searchKeywordType=${param.searchKeywordType}" />
	<c:set var="uriBase"
		value="${uriBase}&searchKeyword=${param.searchKeyword}" />

	<c:set var="aClassStr" />
	<c:if test="${startPage > 1}">
		<a class="${aClassStr}" href="${uriBase}&page=1">◀◀</a>
		<a class="${aClassStr}" href="${uriBase}&page=${startPage - 1}">◀</a>
	</c:if>

	<c:forEach var="i" begin="${startPage}" end="${endPage}">
		<a class="${aClassStr} ${page == i ? 'text-red-500' : ''}"
			href="${uriBase}&page=${i}">${i}</a>
	</c:forEach>

	<c:if test="${endPage < totalPage}">
		<a class="${aClassStr}" href="${uriBase}&page=${endPage + 1}">▶</a>
		<a class="${aClassStr}" href="${uriBase}&page=${totalPage}">▶▶</a>
	</c:if>
</section>




<%@ include file="../common/foot.jspf"%>