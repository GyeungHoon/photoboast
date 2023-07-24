<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="../common/head.jspf"%>
<%-- <c:set var="pageTitle"
		value="<span><i class='far fa-clipboard'></i></span> <span>${board.name} ARTICLE LIST</span>" />
		--%>
		
<h2 class = "articleLisBoardTitle">${board.name}ARTICLELIST</h2>
<section class="articleListUi_container">


	<div class=articleListIu_wrap>
		<div>
			<form action="">
				<input type="hidden" name="boardId" value="${board.id}" />

				<div>
					<label>
						<span>옵션</span>
					</label>
					<select name="searchKeywordType">
						<option value="titleAndBody">제목+내용</option>
						<option value="title">제목</option>
						<option value="body">내용</option>
					</select>
				</div>

				<div>
					<label>
						<span>제목</span>
					</label>
					<input value="${param.searchKeyword}" name="searchKeyword"
						type="text" placeholder="검색어를 입력해주세요." maxlength="10" />
				</div>

				<div>
					<label>
						<span>검색</span>
					</label>
					<input type="submit" value="검색" />
				</div>
			</form>
		</div>

		<div>
			<span>TOTAL ITEMS : </span>
			<span>${totalItemsCount}</span>
			<br />
			<span>TOTAL PAGES : </span>
			<span>${totalPage}</span>
			<br />
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
<hr />

<section class="articleList_container">
	<div class="articleList_wrap">
		<c:forEach items="${articles}" var="article">
			<c:set var="detailUri" value="../article/detail?id=${article.id}" />
			<!-- 게시물 아이템, first -->
			<div class="articleList_box">
				<div class="articleListMember">
					<div>
						<img onerror="${article.writerProfileFallbackImgOnErrorHtmlAttr}"
							src="${article.writerProfileImgUri}" alt="">
					</div>
					<div>
						<span>작성자 : </span>
						<span>${article.extra__writerName}</span>
						<br />
						<span>등록날짜 : </span>
						<span>${article.regDate}</span>
						<br />
						<span>수정날짜 : </span>
						<span>${article.updateDate}</span>
					</div>
				</div>

				<div class="articleListTitle">
					<a href="${detailUri}">
						<span>제목</span>
						<span>${article.title}</span>
					</a>
				</div>
				<div class="articleListBody">
					<a href="${detailUri}">
						<span>본문</span>
						<span>${article.body}</span>
					</a>
				</div>


				<div class="articleListBtn">
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
	</div>
</section>

<section class="articleListPagination_container">
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



<script>
	const param__searchKeywordType = '${param.searchKeywordType}';
	if (param__searchKeywordType.length > 0) {
		$('.search-form-box form [name="searchKeywordType"]').val(
				'${param.searchKeywordType}');
	}
</script>

<%@ include file="../common/foot.jspf"%>