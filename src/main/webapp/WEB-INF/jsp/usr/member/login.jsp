<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="MEMBER LOGIN" />
<%@ include file="../common/head.jspf"%>
<hr />

<section class="mt-8 text-xl">
	<div class="container mx-auto px-3">
		<div class="table-box-type-1">
			<form action="../member/doLogin" method="POST">
				<table border="1">
					<colgroup>
						<col width="200" />
					</colgroup>

					<tbody>
						<tr>
							<th>아이디</th>
							<td>
								<input autocomplete="off" type="text" placeholder="아이디를 입력해주세요" name="loginId" />
							</td>
						</tr>
						<tr>
							<th>비밀번호</th>
							<td>
								<input autocomplete="off" type="text" placeholder="비밀번호를 입력해주세요" name="loginPw" />
							</td>
						</tr>
						<tr>
							<th></th>
							<td>
								<button type="submit">로그인</button>
							</td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
		 
	</div>
</section>

<%@ include file="../common/foot.jspf"%>