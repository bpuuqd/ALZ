<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@include file="../includes/header.jsp"%>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- include summernote-ko-KR -->
<script src="/resources/js/summernote-ko-KR.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/moment.min.js"></script>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
</head>
<style>
.container {
	margin-top: 200px;
	margin-left: 100px;
	display: inline-block;
}

.lessonSideDiv {
	display: inline-block;
}

.lessonImg {
	width: 700px;
}
</style>
<body>
	<div class="container">
		<div class="lesson-container">
			<div class="lesson-main">
				<div class="lessonDetailImgDiv">
					<c:if test="${empty lesson.thumbnail}">
						<img class="lessonImg" src="../../../resources/img/javaclass.jpg">
					</c:if>
					<c:if test="${!empty lesson.thumbnail}">
						<img class="lessonImg" src="/resources/img/lesson/thumb/${lesson.teacherId}${lesson.openAt}/${lesson.thumbnail}">
					</c:if>
				</div>
				<div class="lesson-detail">
					<div class="lesson-detail-nav">
						<a href="#detailDiv">클래스소개</a> 
						<a href="#scheduleDiv">시간표</a> 
						<a href="#curriculumDiv">커리큘럼</a> 
						<a href="#teacherDiv">강사소개</a> 
						<a href="#shortReview">후기</a> 
						<a href="#refundTerm">환불정책</a>
					</div>

					<div class="detailDiv" id="detailDiv">
						<br> <br> <br> <br>
						<h3>
							<strong>이런 걸 배울 거예요</strong>
						</h3>
						<textarea class="form-control" 
								  id='content' name='content' readonly="readonly"><c:out value="${detail.detail }" /></textarea>
						
						<br> <br>
						<h3>
							<strong>
								<c:out value="${lesson.levelName}" /> 
								<c:if test="${lesson.levelName != '누구나'}">자들</c:if>
							</strong>을 위한 <br> <c:out value="${lesson.categoryName}" /> 클래스입니다.
						</h3>

						<br> <br>
						
					</div>

					<div class="scheduleDiv" id="scheduleDiv">
						<br> <br> <br> <br>
						<h3>
							<strong>세부 스케줄</strong>
						</h3>
						<br>
						<c:forEach items="${schedule }" var="schedule">
							<strong><c:out value="${schedule.lessonDate }" /></strong>
							<c:out value="${schedule.startAt }" /> ~ <c:out
								value="${schedule.endAt }" />
							<br>
						</c:forEach>
						<br> <br>
					</div>

					<div class="curriculumDiv" id="curriculumDiv">
						<br> <br> <br> <br>
						<h3>
							<strong>커리큘럼</strong>
						</h3>

						<c:forEach items='${curriculum}' var='list'>
							<h4>
								<c:out value="${list.subject}" />
							</h4>

							<c:forEach items='${list.detailList}' var='detail'>
								<h5>
									<c:out value="${detail.detailOrder}" />
									.
									<c:out value="${detail.detail}" />
								</h5>
							</c:forEach>
							<br>
						</c:forEach>
					</div>

					<div class="teacherDiv" id="teacherDiv">
						<br> <br> <br> <br>
						<h3>
							<strong>강사 소개</strong>
						</h3>
						<br>
						<h4>
							<c:out value="${teacher.nickname}" />
						</h4>
						<c:out value="${teacher.snsType}" />
						-
						<c:out value="${teacher.snsId}" />
						<br> <br>
						<h5>
							<c:out value="${teacher.profile}" />
						</h5>
					</div>


					<br> <br> <br> <br>
					<h3>
						<strong>한줄평</strong>
					</h3>
					<br>
					<p id="lesson_star_rate_quickReivew">
						<a href="#" id="star1">★</a> <a href="#" id="star2">★</a> <a
							href="#" id="star3">★</a> <a href="#" id="star4">★</a> <a
							href="#" id="star5">★</a>
					</p>

					<input type='hidden' name='rate' id="rate"> <input
						type='hidden' name='lessonId' id="lessonId"
						value='<c:out value="${lesson.id}" />'> + <input
						type="text" class="quickReviewText" name="content" id="content"
						placeholder="별점과 한줄평을 입력해주세요">
					<button id="submitQuickReview">입력</button>

					<div class="shortReview" id="shortReview"></div>

					<div id="refundTerm">
						<br> <br> <br> <br>
						<h4>
							<strong>환불정책</strong>
						</h4>
						환불은 1주일 전까지 해드립니다. <br> 수강 후에는 수업1회당 20% 차감 환불. <br> <br>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="lesson-info">
		<div class="lessonSideDiv">
			<strong><c:out value="${teacher.nickname}" /></strong>
			<h4>
				[<c:out value="${lesson.categoryName}" />]<c:out value="${lesson.title}" />
			</h4>
			
				<fmt:formatNumber type="number" var="originPrice" maxFractionDigits="3" value="${merchandise.originPrice}" />
				<small><del><c:out value="${originPrice }"/></del>원</small>
				<br>
				<fmt:parseNumber var= "discountRate" integerOnly= "true" value= "${merchandise.discountRate }" />
				<c:out value="${discountRate}" />%
			
			<br>
			<fmt:formatNumber type="number" var="salePrice" maxFractionDigits="3" value="${merchandise.salePrice}" />
			<c:out value="${salePrice }"/>원
			<p>
				수강대상[<c:out value="${lesson.levelName}" />]
			</p>
			<form name="orderform" method="get" action="/order/orderForm">

				<input type="hidden" id="id" name="id" value='<c:out value="${lesson.id}"/>'>
        <input type="hidden" id="name" name="name" value='<c:out value="${merchandise.name }"/>'>
				<input type="hidden" id="originPrice" name="originPrice" value='<c:out value="${merchandise.originPrice }"/>'> 
        <input type="hidden" id="userId" name="userId" value="${principal.id }">
				<input type='hidden' id='cartId' name='cartId' value="${lesson.id }">

				<button type="submit" class="buy">구매하기</button>
			</form>

			<button class="addCart">장바구니 담기</button>
		</div>
	</div>



</body>
<script type="text/javascript">
	var $shortReviewDiv;
	var $lessonId = $("#lessonId");
	var $rate = $("#rate");
	var $content = $("#content");

	$(document).ready(function() {

		$shortReviewDiv = $('.shortReview');
		$lessonId = $("#lessonId");

		let str = "";
		<c:forEach items='${quickReview}' var='review'>
		str += "<c:out value='${review.nickname}' />";
		str += "<p id='lesson_star_rate'>";
		for (var i = 0; i < '${review.rate}'; i++) {
			str += "<a class='lessonOn'>★</a>"
		}
		for (var j = 0; j < (5 - '${review.rate}'); j++) {
			str += "<a>★</a>"
		}
		str += "</p>";
		str += "<p><c:out value='${review.content}' /></p>";
		str += "<br>";
		</c:forEach>
		$shortReviewDiv.html(str);

	});

	// 별점 설정 부분
	$('#lesson_star_rate_quickReivew a').click(
			function(e) {
				e.preventDefault();
				$(this).parent().children("a").removeClass(
						"lessonOnQuickReview"); /* 별점의 on 클래스 전부 제거 */
				$(this).addClass("lessonOnQuickReview").prevAll("a").addClass(
						"lessonOnQuickReview"); /* 클릭한 별과, 그 앞 까지 별점에 on 클래스 추가 */
				var lesson_star_rate = $(".lessonOnQuickReview").length;
				$("input[type=hidden][name=rate]").val(lesson_star_rate);

			});
	
	// 파일 리스트 가져와서 보여주기
	(function() {

		$.getJSON("/lessons/getFileList", {
			lessonId : lessonId
		}, function(arr) {
			console.log(arr);
			
			var str = "";
			
			$(arr).each(function(i, file){
				
				//image type
				if(file.fileType){
					var fileCallPath = encodeURIComponent(file.uploadPath+"/s_"+file.uuid+"_"+file.fileName);
					
					str += "<li data-path='"+file.uploadPath+"' data-uuid='"+file.uuid+"' data-filename='"+file.fileName+"'";
					str += "data-type='"+file.fileType+"'><div>";
					str += "<img src='/file/display?fileName="+fileCallPath+"'>";
					str += "</div></li>";
				} else {
					str += "<li data-path='"+file.uploadPath+"' data-uuid='"+file.uuid+"' data-filename='"+file.fileName+"'";
					str += "data-type='"+file.fileType+"'><div>";
					str += "<img src='/resources/img/attach.png'>";
					str += "</div></li>";
				}
			});
			$(".uploadResult ul").html(str);
		});
	})();
	

	var $content = $('#content');
	
	//서머노트 툴바 삭제
	$content.summernote('code', $content.val());
	$("div[class*=toolbar]").css("display", "none");
	$("div[class*=note-editable]").attr("contenteditable", "false");


	// 한줄평 리스트 가져오기
	function getquickReviewList() {

		return $.getJSON("/lessons/quickReview/" + $lessonId.val());

	}

	function quickReviewList() {

		getquickReviewList().then(function(response) {
			let str = "";

			if (response == null || response.length == 0) {
				$shortReviewDiv.html("");
				return;
			}

			for (let i = 0; i < response.length; i++) {
				str += "<h5>" + response[i].nickname + "</h5>";
				str += "<p id='lesson_star_rate'>";
				for (var j = 0; j < response[i].rate; j++) {
					str += "<a class='lessonOn'>★</a>"
				}
				for (var k = 0; k < (5 - response[i].rate); k++) {
					str += "<a>★</a>"
				}
				str += "</p>";
				str += "<p>" + response[i].content + "</p>";
				str += "<br>";
			}
			$shortReviewDiv.html(str);
			$content.val("");
			$("#lesson_star_rate_quickReivew a").removeClass();
		});
	}

	// 한줄평 등록버튼 이벤트
	$("#submitQuickReview").click(function(e) {

		$rate = $("#rate");
		$content = $("#content");

		var quickReview = {
			lessonId : $lessonId.val(),
			rate : $rate.val(),
			content : $content.val()
		}

		addQuickReview(quickReview).then(function(response) {
			// 한줄평 리스트 다시그려줌
			quickReviewList();
		});
	});

	// 한줄평 추가
	function addQuickReview(quickReview) {
		return $.ajax({
			type : 'POST',
			url : '/lessons/quickReview',
			data : JSON.stringify(quickReview),
			contentType : "application/json; charset=utf-8"
		});
	};

	// 장바구니 담기
	$(".addCart").click(function() {
		var userId = $("#userId").val();
		var id = $("#id").val();
		console.log(userId);
		console.log(id);
		var data = {
			userId : userId,
			id : id
		};

		$.ajax({
			type : "post",
			async : true, //false인 경우 동기식으로 처리한다. 문제 발생.
			url : "/merchandise/cartInsert",
			data : data,
			success : function(result) {
				if (result == "true") {
					if (confirm("장바구니에 추가하였습니다. 장바구니로 이동하시겠습니까?"))
						location.href = "/merchandise/cart";
					else
						return false;
				} else {
					/* alert("이미 카트에 등록된 상품입니다."); */
					if (confirm("이미 카트에 등록된 상품입니다. 장바구니로 이동하시겠습니까?"))
						location.href = "/merchandise/cart";
					else
						return false;
				}

			},
			error : function(data, textStatus) {
				alert("에러가 발생했습니다." + data);
			},
			complete : function(data, textStatus) {
				//alert("작업을완료 했습니다");
			}
		}); //end ajax	
	});
</script>
</html>