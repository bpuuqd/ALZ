<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="../includes/header.jsp"%>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</head>
<style>
.container {
	margin-top: 200px;
	margin-left: 600px;
	min-height: 100%;
	position: relative;
}

.table-container {
	top: 90px;
	left: 20%;
}

.content-table {
	border-collapse: collapse;
	font-size: 0.8em;
	min-width: 400px;
	width: 700px;
	border-radius: 5px 5px 0 0;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

.content-table thead tr {
	background-color: #335492;
	color: #ffffff;
	text-align: left;
}

.content-table th {
	padding: 13px 15px;
	font-weight: bold;
	font-size: 18px;
	text-align: center;
}

.content-table td {
	padding: 8px 15px;
	font-size: 15px;
	text-align: center;
}

.content-table thead tr {
	font-weight: bold;
}

.content-table td a {
	text-decoration: none;
	color: #335492;
}

.content-table tbody tr {
	border-bottom: 1px solid #dddddd;
	font-weight: bold;
}

.content-table tbody tr:nth-of-type(even) {
	background-color: #f3f3f3;
}

.content-table tbody tr:last-of-type {
	border-bottom: 2px solid #335492;
}

.content-table tbody tr.active-row {
	font-weight: bold;
	color: #335492;
}

.content-table td .result {
	font-size: 24px;
}

#buyBtn {
	font-size: 18px;
	margin-top: 30px;
	margin-left: 320px; background-color : #335492;
	border-radius: 5px 5px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
	color: #ffffff;
	border: 1px solid #dddddd;
	background-color: #335492
}

div.title {
	margin-left: 300px;
	margin-bottom: 20px;
	font-size: 30px;
	font-weight: bold;
}

div.priceInfo {
	padding-top: 10px;
	width: 700px;
	border-top: 1px solid #ccc;
}

div.payMethod {
	padding-top: 10px;
	width: 700px;
	border-top: 1px solid #ccc;
}

div.sub1 {
	font-size: 18px;
	font-weight: bold;
	margin-bottom: 10px;
}

p.p1 {
	margin: 5px 0;
}

p>span {
	font-weight: bold;
}

.footer {
	width: 100%;
	position: absolute;
	bottom: 0;
	background: #5eaeff;
	text-align: center;
	color: white;
	background: #335492;
	color: #fff;
	padding: 30px 0;
}
</style>
<body>
	<div class="container">

		<div class="title">주문 정보</div>

		<form name="orderinfo" method="post" action="/order/payForInicis">
			<div class="table-container">
				<table class="content-table">
					<tr>
						<th></th>
						<th>상품정보</th>
						<th>상품 금액</th>
					</tr>
					<c:set var="i" value="0" />
					<!-- 가격 총합 -->
					<c:set var="finalTotalPrice" value="0" />
					<!-- 할인 총합 -->
					<c:set var="salePrice" value="0" />
					<c:forEach items="${buyList}" var="list">
						<tr>
							<td class="main_list_col1">이미지</td>
							<td class="main_list_col2">${list.name}</td>
							<td class="main_list_col3"><fmt:formatNumber
									value="${list.salePrice }" pattern="#,###" /> 원<br> <del>
									<fmt:formatNumber value="${list.originPrice }" pattern="#,###" />
									원
								</del></td>
						</tr>

						<input type="hidden" id="cartId" name="cartId" value="${list.id }">
						<c:set var="i" value="${i+1}" />
						<c:set var="finalTotalPrice"
							value="${finalTotalPrice + list.salePrice}" />
						<c:set var="salePrice"
							value="${salePrice + list.originPrice - list.salePrice}" />
						<input type="hidden" id="merchandiseName" name="merchandiseName"
							value="${list.name}">
					</c:forEach>

				</table>
			</div>
			<br> <br>

			<div class="orderer">
				<div class="sub1">연락처 정보</div>
				<p class="p1">이 름</p>
				<input type="text" name="name" id="name"
					value="${userInfo.nickname}">
				<p class="p1">휴대폰</p>
				<input type="text" name="phone" id="phone"
					value="${userInfo.phoneNumber}">
			</div>
			<br>
			<div class="priceInfo">
				<div class="sub1">결제 금액</div>
				<p class="p1">
					주문 금액
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<fmt:formatNumber value="${finalTotalPrice+salePrice}"
						pattern="#,###" />
					원
				</p>
				<p class="p1">
					할인 금액
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					-
					<fmt:formatNumber value="${salePrice}" pattern="#,###" />
					원
				</p>
				<p class="p1">
					최종 결제 금액 &nbsp;&nbsp;&nbsp; <span><fmt:formatNumber
							value="${finalTotalPrice}" pattern="#,###" /></span> 원
				</p>
			</div>
			<br>

			<div class="payMethod">
				<div class="sub1">결제 수단</div>
				<label><input type="radio" name="pay" value="카드 결제">카드
					결제</label><br> <label><input type="radio" name="pay"
					value="카카오 페이">카카오 페이</label>
			</div>
			<div id="pay_hidden"></div>
			<div class="buy">
				<button id="buyBtn" type="submit">다 음</button>
			</div>

			<!-- 값전달 -->
			<input type="hidden" id="merchandise" name="merchandise"
				value="${merchandise.id}"> <input type="hidden" name="state"
				id="state" value="결제완료"> <input type="hidden"
				name="totalPrice" id="totalPrice" value="${finalTotalPrice}">
			<input type="hidden" name="totalPrice" id="totalPrice"
				value="${finalTotalPrice}"> <input type="hidden"
				name="salePrice" id="salePrice" value="${salePrice}">
		</form>

	</div>
	<footer class="footer">
		<div>
			<p class="copy">Copyright, ⓒ ALZ. All rights reserved.</p>
		</div>
	</footer>
</body>
<script type="text/javascript">
	var phoneNumber = $("#phone").val();
	var phoneNumberRegex = /^[0-9]{3}-[0-9]{4}-[0-9]{4}$/;

	var formObj = $("form");

	var str = "";

	$('#buyBtn')
			.on(
					"click",
					function(e) {
						e.preventDefault();
						if (!(checkConfirm())) {
							return false;
						} else {
							/* payForKakao(); */
						}

						var method = $('input:radio[name="pay"]:checked').val();

						console.log(method);

						if (method === "카카오 페이") {
							formObj.attr("action", "/order/payForKakao");
							str += "<input type='hidden' id='method' name='method' value='"+method+"'>";
							$("#pay_hidden").html(str);
						} else {
							str += "<input type='hidden' id='method' name='method' value='"+method+"'>";
							$("#pay_hidden").html(str);
						}
						formObj.submit();

					});

	// 결제방법, 폰번호 체크
	function checkConfirm() {
		if ($('input:radio[name="pay"]:checked').length < 1) {
			alert("결제 방법을 선택하세요.");
			event.preventDefault();
			return false;
		} else {
			return true;
		}
		/* 	if (!phoneNumberRegex.test(phoneNumber)) {
				alert("연락처를 다시 확인해주세요.");
				$("#phone").val("");
				$("#phone").focus();
				event.preventDefault();
				return false;
			} */
	}
</script>
</html>