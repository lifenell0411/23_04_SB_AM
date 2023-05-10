<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="MEMBER findLoginId" />
<%@ include file="../common/head.jspf"%>
<hr />

<section class="mt-8 text-xl">
	<div class="container mx-auto px-3">
		<div class="table-box-type-1">
			<form action="../member/doFindLoginId" method="POST">
				<input type="hidden" name="afterLoginUri" value="${param.afterLoginUri }" />
				<table border="1">
					<colgroup>
						<col width="200" />
					</colgroup>

					<tbody>
						<tr>
							<th>이름</th>
							<td>
								<input class="input input-bordered w-full max-w-xs" autocomplete="off" type="text" placeholder="이름을 입력해주세요"
									name="name" />
							</td>
						</tr>
						<tr>
							<th>이메일</th>
							<td>
								<input class="input input-bordered w-full max-w-xs" autocomplete="off" type="text" placeholder="이메일을 입력해주세요"
									name="email" />
							</td>
						</tr>
						<tr>
							<th></th>
							<td>
								<button type="submit">아이디 찾기</button>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
		<div class="btns">
			<button class="btn-text-link btn btn-active btn-ghost" type="button" onclick="history.back();">뒤로가기</button>

			<c:if test="${article.actorCanModify }">
				<a class="btn-text-link btn btn-active btn-ghost" href="../article/modify?id=${article.id }">수정</a>
			</c:if>
			<c:if test="${article.actorCanDelete }">
				<a class="btn-text-link btn btn-active btn-ghost" onclick="if(confirm('정말 삭제하시겠습니까?')==false) return false;"
					href="../article/doDelete?id=${article.id }">삭제</a>
			</c:if>
		</div>
	</div>
</section>

<%@ include file="../common/foot.jspf"%>