<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="${board.code}" />
<%@ include file="../common/head.jspf"%>
<hr />

<section class="mt-8 text-xl">
	<div class="container mx-auto px-3">
		<div class="table-box-type-1">
			<div>${articlesCount }개</div>
			<table class="table table-zebra w-full">
				<colgroup>
					<col width="70" />
					<col width="140" />
					<col width="140" />
					<col width="140" />
				</colgroup>
				<thead>
					<tr>
						<th>번호</th>
						<th>날짜</th>
						<th>제목</th>
						<th>작성자</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach var="article" items="${articles }">
						<tr class="hover">
							<td>
								<div class="badge">${article.id}</div>
							</td>
							<td>${article.regDate.substring(2,16)}</td>
							<td>
								<a class="hover:underline" href="../article/detail?id=${article.id}">${article.title}</a>
							</td>
							<td>${article.extra__writer}</td>

						</tr>
					</c:forEach>
				</tbody>

			</table>

           <!-- start of pagination -->
<div class="pagination">
    <c:choose>
        <c:when test="${page > 1}">
            <a href="?boardId=${board.id}&page=${page - 1}" class="page-link">&laquo;</a>
        </c:when>
        <c:otherwise>
            <span class="page-link disabled">&laquo;</span>
        </c:otherwise>
    </c:choose>

    <c:forEach var="pageNumber" begin="${startPage}" end="${endPage}">
        <c:choose>
            <c:when test="${pageNumber == page}">
                <span class="page-link active">${pageNumber}</span>
            </c:when>
            <c:otherwise>
                <a href="?boardId=${board.id}&page=${pageNumber}" class="page-link">${pageNumber}</a>
            </c:otherwise>
        </c:choose>
    </c:forEach>

    <c:choose>
        <c:when test="${page < pageCount}">
            <a href="?boardId=${board.id}&page=${page + 1}" class="page-link">&raquo;</a>
        </c:when>
        <c:otherwise>
            <span class="page-link disabled">&raquo;</span>
        </c:otherwise>
    </c:choose>
</div>
<!-- end of pagination -->
</section>

<%@ include file="../common/foot.jspf"%>