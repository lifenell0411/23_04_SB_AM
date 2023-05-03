<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="pageTitle" value="MEMBER MODIFY" />
<%@ include file="../common/head.jspf"%>
<hr />

<!-- Article modify 관련 -->
<script type="text/javascript">
	let MemberModify__submitFormDone = false;
	function MemberModify__submit(form) {
		if (MemberModify__submitFormDone) {
			return;
		}
		form.name.value = form.name.value.trim();
		if (form.name.value.length == 0) {
			alert('내용을 입력해주세요');
			form.name.focus();
			return;
		}
		MemberModify__submitFormDone = true;
		form.submit();
	}
</script>

<section class="mt-8 text-xl">
	<div class="container mx-auto px-3">
		<div class="table-box-type-1">
			<form action="../member/doModify" method="POST" onsubmit="MemberModify__submit(this); return false;">
				<input type="hidden" name="id" value="${member.id }" />
				<table>
					<colgroup>
						<col width="200" />
					</colgroup>

					<tbody>
					<tr>
						<th>가입일</th>
						<td>${rq.loginedMember.regDate }</td>
					</tr>
					<tr>
						<th>아이디</th>
						<td>${rq.loginedMember.loginId }</td>
					</tr>
					<tr>
						<th>이름</th>
						<td>${rq.loginedMember.name }</td>
					</tr>
					<tr>
						<th>닉네임</th>
						<td><input class="input input-bordered w-full max-w-xs" type="text" name="nickname" placeholder="닉네임을 입력해주세요"
									value="${rq.loginedMember.nickname }" /></td>
					</tr>
					<tr>
						<th>전화번호</th>
								<td><input class="input input-bordered w-full max-w-xs" type="text" name="cellphoneNum" placeholder="전화번호를 입력해주세요"
									value="${rq.loginedMember.cellphoneNum }" /></td>
					</tr>
					<tr>
						<th>이메일</th>
							<td><input class="input input-bordered w-full max-w-xs" type="text" name="email" placeholder="이메일을 입력해주세요"
									value="${rq.loginedMember.email }" /></td>
					</tr>
						 
						<tr>
							<th></th>
							<td>
								<button type="submit" value="수정" />
								수정
								</button>
							</td>
						</tr>
					</tbody>

				</table>
			</form>
		</div>
		<div class="btns">
			<button class="btn-text-link btn btn-active btn-ghost" type="button" onclick="history.back();">뒤로가기</button>

			 
		</div>
	</div>
</section>

<%@ include file="../common/foot.jspf"%>