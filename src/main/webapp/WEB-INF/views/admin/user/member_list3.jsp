<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../../includes/admin_header.jsp"%>
<!-- context 경로 -->
<c:set var="path" value="${pageContext.request.contextPath}" />

<!-- Content Wrapper -->
<div id="content-wrapper" class="d-flex flex-column">

	<!-- Main Content -->
	<div id="content">
			<!-- Topbar -->
		<nav
			class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

			<!-- Sidebar Toggle (Topbar) -->
			<form class="form-inline">
				<button id="sidebarToggleTop"
					class="btn btn-link d-md-none rounded-circle mr-3">
					<i class="fa fa-bars"></i>
				</button>
			</form>

			<!-- Topbar Search -->
			<form
				class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
				<div class="input-group">
					<input type="text" class="form-control bg-light border-0 small"
						placeholder="Search for..." aria-label="Search"
						aria-describedby="basic-addon2">
					<div class="input-group-append">
						<button class="btn btn-primary" type="button">
							<i class="fas fa-search fa-sm"></i>
						</button>
					</div>
				</div>
			</form>

			<!-- Topbar Navbar -->
			<ul class="navbar-nav ml-auto">

				<!-- Nav Item - Search Dropdown (Visible Only XS) -->
				<li class="nav-item dropdown no-arrow d-sm-none"><a
					class="nav-link dropdown-toggle" href="#" id="searchDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="fas fa-search fa-fw"></i>
				</a> <!-- Dropdown - Messages -->
					<div
						class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
						aria-labelledby="searchDropdown">
						<form class="form-inline mr-auto w-100 navbar-search">
							<div class="input-group">
								<input type="text" class="form-control bg-light border-0 small"
									placeholder="Search for..." aria-label="Search"
									aria-describedby="basic-addon2">
								<div class="input-group-append">
									<button class="btn btn-primary" type="button">
										<i class="fas fa-search fa-sm"></i>
									</button>
								</div>
							</div>
						</form>
					</div></li>

				<!-- Nav Item - Alerts -->
				<li class="nav-item dropdown no-arrow mx-1"><a
					class="nav-link dropdown-toggle" href="#" id="alertsDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="fas fa-bell fa-fw"></i> <!-- Counter - Alerts -->
						<span class="badge badge-danger badge-counter">3+</span>
				</a> <!-- Dropdown - Alerts -->
					<div
						class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
						aria-labelledby="alertsDropdown">
						<h6 class="dropdown-header">Alerts Center</h6>
						<a class="dropdown-item d-flex align-items-center" href="#">
							<div class="mr-3">
								<div class="icon-circle bg-primary">
									<i class="fas fa-file-alt text-white"></i>
								</div>
							</div>
							<div>
								<div class="small text-gray-500">December 12, 2019</div>
								<span class="font-weight-bold">A new monthly report is
									ready to download!</span>
							</div>
						</a> <a class="dropdown-item d-flex align-items-center" href="#">
							<div class="mr-3">
								<div class="icon-circle bg-success">
									<i class="fas fa-donate text-white"></i>
								</div>
							</div>
							<div>
								<div class="small text-gray-500">December 7, 2019</div>
								$290.29 has been deposited into your account!
							</div>
						</a> <a class="dropdown-item d-flex align-items-center" href="#">
							<div class="mr-3">
								<div class="icon-circle bg-warning">
									<i class="fas fa-exclamation-triangle text-white"></i>
								</div>
							</div>
							<div>
								<div class="small text-gray-500">December 2, 2019</div>
								Spending Alert: We've noticed unusually high spending for your
								account.
							</div>
						</a> <a class="dropdown-item text-center small text-gray-500" href="#">Show
							All Alerts</a>
					</div></li>

				<!-- Nav Item - Messages -->
				<li class="nav-item dropdown no-arrow mx-1"><a
					class="nav-link dropdown-toggle" href="#" id="messagesDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <i class="fas fa-envelope fa-fw"></i> <!-- Counter - Messages -->
						<span class="badge badge-danger badge-counter">7</span>
				</a> <!-- Dropdown - Messages -->
					<div
						class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
						aria-labelledby="messagesDropdown">
						<h6 class="dropdown-header">Message Center</h6>
						<a class="dropdown-item d-flex align-items-center" href="#">
							<div class="dropdown-list-image mr-3">
								<img class="rounded-circle"
									src="https://source.unsplash.com/fn_BT9fwg_E/60x60" alt="">
								<div class="status-indicator bg-success"></div>
							</div>
							<div class="font-weight-bold">
								<div class="text-truncate">Hi there! I am wondering if you
									can help me with a problem I've been having.</div>
								<div class="small text-gray-500">Emily Fowler · 58m</div>
							</div>
						</a> <a class="dropdown-item d-flex align-items-center" href="#">
							<div class="dropdown-list-image mr-3">
								<img class="rounded-circle"
									src="https://source.unsplash.com/AU4VPcFN4LE/60x60" alt="">
								<div class="status-indicator"></div>
							</div>
							<div>
								<div class="text-truncate">I have the photos that you
									ordered last month, how would you like them sent to you?</div>
								<div class="small text-gray-500">Jae Chun · 1d</div>
							</div>
						</a> <a class="dropdown-item d-flex align-items-center" href="#">
							<div class="dropdown-list-image mr-3">
								<img class="rounded-circle"
									src="https://source.unsplash.com/CS2uCrpNzJY/60x60" alt="">
								<div class="status-indicator bg-warning"></div>
							</div>
							<div>
								<div class="text-truncate">Last month's report looks
									great, I am very happy with the progress so far, keep up the
									good work!</div>
								<div class="small text-gray-500">Morgan Alvarez · 2d</div>
							</div>
						</a> <a class="dropdown-item d-flex align-items-center" href="#">
							<div class="dropdown-list-image mr-3">
								<img class="rounded-circle"
									src="https://source.unsplash.com/Mv9hjnEUHR4/60x60" alt="">
								<div class="status-indicator bg-success"></div>
							</div>
							<div>
								<div class="text-truncate">Am I a good boy? The reason I
									ask is because someone told me that people say this to all
									dogs, even if they aren't good...</div>
								<div class="small text-gray-500">Chicken the Dog · 2w</div>
							</div>
						</a> <a class="dropdown-item text-center small text-gray-500" href="#">Read
							More Messages</a>
					</div></li>

				<div class="topbar-divider d-none d-sm-block"></div>

				<!-- Nav Item - User Information -->
				<li class="nav-item dropdown no-arrow"><a
					class="nav-link dropdown-toggle" href="#" id="userDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> <span
						class="mr-2 d-none d-lg-inline text-gray-600 small">Valerie
							Luna</span> <img class="img-profile rounded-circle"
						src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
				</a> <!-- Dropdown - User Information -->
					<div
						class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
						aria-labelledby="userDropdown">
						<a class="dropdown-item" href="#"> <i
							class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i> Profile
						</a> <a class="dropdown-item" href="#"> <i
							class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i> Settings
						</a> <a class="dropdown-item" href="#"> <i
							class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i> Activity
							Log
						</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#" data-toggle="modal"
							data-target="#logoutModal"> <i
							class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
							Logout
						</a>
					</div></li>

			</ul>

		</nav>
		<!-- End of Topbar -->
		
		<!-- Begin Page Content -->		
		<div class="container-fluid">
		
			<!-- Page Heading -->
			<h1 class="h3 mb-2 text-gray-800">회원 리스트</h1>
			<p class="mb-4">회원 상태 변경</p>
			
			<!-- DataTales Example -->
			<div class="card shadow mb-4">
				<div class="card-header py-3">
					<h6 class="m-0 font-weight-bold text-primary">Decision in Progress</h6>
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<form name="form" method="post">
							<table class="table table-bordered" id="dataTable" width="100%"
								cellspacing="0">
								<thead style="text-align:center; background:#4e73df; color:white;">
									<tr>
										<th><input type="checkbox" id="checkAll"></th>
										<th>이메일</th>
										<th>닉네임</th>
										<th>권한</th>
										<th>전화번호</th>
										<th>회원 상태</th>
										<th>상태 시작일시</th>
										<th>상태 종료일시</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="row" items="${list}">
										<tr>
											<td><input type="checkbox" id="checkOne" name="checkOne"></td>
											<td>${row.email}</td>
											<!-- 회원정보 상세조회를 위해 a태그 추가 -->
											<td><a href="${path}/admin/view?email=${row.email}">${row.nickname}</a></td>
											<td>${row.role}</td>
											<td>${row.phoneNumber}</td>
											<td>${row.state}</td>
											<td>${row.startAt}</td>
											<td>${row.endAt}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<select name='state'>
								<option>상태 변경</option>
								<option value='3' id="btnDropOut">탈퇴</option>
								<option value='4' id="btnSuspended">정지</option>
								<option value='5' id="btnInactive">휴면</option>						
								<option value='6' id="btnBackNormal">일반</option>						
							</select>
							<input type='button' name='changeState' id='changeState' value="변경">
						</form>
						<!-- paging -->
						<div class="page-footer">
							<ul class="pagination pull-right">
								<c:if test="${pageMaker.prev }">
									<li class="paginate_button previous"><a
										href="${pageMaker.startPage -1 }">Previous</a></li>
								</c:if>

								<c:forEach var="num" begin="${pageMaker.startPage }"
									end="${pageMaker.endPage }">
									<li
										class="paginate_button ${pageMaker.cri.pageNum == num? 'active':'' }"><a
										href="${num }" class="paging">${num }</a></li>
								</c:forEach>

								<c:if test="${pageMaker.next }">
									<li class="paginate_button next"><a
										href="${pageMaker.endPage +1 }">Next</a></li>
								</c:if>
							</ul>
						</div>

						<form id='actionForm' action="/admin/list" method='get'>
							<input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum}'> 
							<input type='hidden' name='amount' value='${pageMaker.cri.amount}'>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- /.container-fluid -->
	</div>
	<!-- End of Main Content -->
	
	<!-- Footer -->
	<footer class="sticky-footer bg-white">
		<div class="container my-auto">
			<div class="copyright text-center my-auto">
				<span>Copyright &copy; ALZ Corp. All rights reserved.</span>
			</div>
		</div>
	</footer>
	<!-- End of Footer -->
	
	</div>
	<!-- End of Content Wrapper -->
	
	</div>
	<!-- End of Page Wrapper -->
	
	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>
	
	<!-- Logout Modal-->
	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Bootstrap core JavaScript-->
	<script src="/resources/vendor/jquery/jquery.min.js"></script>
	<script src="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	<!-- Core plugin JavaScript-->
	<script src="/resources/vendor/jquery-easing/jquery.easing.min.js"></script>
	
	<!-- Custom scripts for all pages-->
	<script src="/resources/js/sb-admin-2.min.js"></script>
	
	<!-- Page level plugins -->
	<!-- <script src="/resources/vendor/chart.js/Chart.min.js"></script> -->
	
	<!-- Page level custom scripts -->
	<!-- <script src="/resources/js/demo/chart-area-demo.js"></script>
	<script src="/resources/js/demo/chart-pie-demo.js"></script> -->

	<script type="text/javascript">
	
		var actionForm;
	
		$(document).ready(function() {

			actionForm = $("#actionForm");
			
			//전체선택 체크박스 클릭
			$("#checkAll").click(function(){ 
				//만약 전체 선택 체크박스가 체크된상태일경우
				if($("#checkAll").prop("checked")) { 
					$("input[type=checkbox]").prop("checked",true); 
				} else { 
					$("input[type=checkbox]").prop("checked",false); 
				} 
			});
			
			 //변경버튼 클릭시
			$("#changeState").click(function(){
				var email = getChecked();
				var state = $("select[name=state]").val();
				var data = {
					email,
					state
				};
				changeLessonStateApi(data)			
			});
			
			 
			//체크된것 값 가져오기                                                             
			function getChecked(){ 
				var tdArr = new Array();
				var checkbox = $("input[name=checkOne]:checked");
					// 체크된 체크박스 값을 가져온다
				checkbox.each(function(i) {
				var tr = checkbox.parent().parent().eq(i);
				var td = tr.children();
				var no = td.eq(1).text();
				tdArr.push(no);				
			});
				return tdArr;
			};
			
			//state change
			function changeUserStateApi(data){
	  		  return $.ajax({
	  		    url: "/admin/user",
	  		    type: "Put",
	  		    data: JSON.stringify(data),
	  		    contentType: "application/json",
	  		    success : 
	  		    	location.href = "/admin/list"
	  		  	  });
	  		}
			
			$pageBtn = $(".paging");
			$tbody = $("tbody");

			$pageBtn.on().click(function(e){
				// active 관련은 나중에 없앨 수도 있음
				$pageBtn.parent().removeClass("active")
				e.preventDefault();
				var $target = e.target
				console.log($target);
				$target.parentNode.setAttribute("class", "active");
				var pageNum = $target.text;
				getBoardList(pageNum)
				.then(function(response){
					console.log(response);
					drawMyBoardList(response);
				})
				.catch(function(error){
					console.log(error);
				});
			});
			
			function getBoardList(pageNum){
					return $.ajax({
					type : "GET",
					url : "/admin/board/"+pageNum,
					contentType : "application/json"
				});
			};
			
			function drawMyBoardList(boardList){
				console.log(boardList);
				$tbody.html("");
				var fragment = document.createDocumentFragment();
				for(var i = 0; i<boardList.length; i++){
					var board = boardList[i];
					var str = "";
					var tr = document.createElement("tr");
					str += "<td>"+board.id+"</td>";
					str += "<td><a class='read' href='/board/read?id="+board.boardId+"'>"+board.title+"</a></td>";
					str += "<td>"+board.nickname+"</td>"
					var writtenAt = board.writtenAt
					var date = new Date(writtenAt);
					str += "<td>"+formatDate(date)+"</td>"
				tr.innerHTML += str;
				fragment.appendChild(tr);	
				}
				$tbody.append($(fragment));
			};
			
			function formatDate(date) { 
				var d = new Date(date), month = '' + (d.getMonth() + 1), day = '' + d.getDate(), year = d.getFullYear(); 
				if (month.length < 2) month = '0' + month; 
				if (day.length < 2) day = '0' + day; 
				return [year, month, day].join('-'); 
			};

		});
		
			
			$("#btnDropOut").click(function() {
				// 확인 대화상자	
				if (document.form[0].value == "") {
					alert("이메일을 입력해주세요");
				} else if (confirm("해당 계정을 탈퇴 시키겠습니까?")) {
					document.form.action = "${path}/admin/dropOut";
					document.form.submit();

				}
			});
			$("#btnSuspended").click(function() {
				// 확인 대화상자
				if (document.form[0].value == "") {
					alert("이메일을 입력해주세요");
				} else {
					if (confirm("해당 계정을 정지 시키겠습니까?")) {
						document.form.action = "${path}/admin/suspended";
						document.form.submit();
					}
				}
			});
			$("#btnInactive").click(function() {
				// 확인 대화상자	
				if (document.form[0].value == "") {
					alert("이메일을 입력해주세요");
				} else {
					if (confirm("해당 계정을 휴면전환 시키겠습니까?")) {
						document.form.action = "${path}/admin/inactive";
						document.form.submit();
					}
				}
			});
			$("#btnBackNormal").click(function() {
				// 확인 대화상자	
				if (document.form[0].value == "") {
					alert("이메일을 입력해주세요");
				} else {
					if (confirm("해당 계정을 일반상태로 전환 시키겠습니까?")) {
						document.form.action = "${path}/admin/backNormal";
						document.form.submit();
					}
				}
			});
		
	</script>

</body>
</html>