<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<%--해당 파일에 타이틀 정보를 넣어준다--%>
<c:set var="title" scope="application" value="메인" />

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<style type="text/css">
#s_eap_draft_info tr th {
	width: 100px;
}

#s_eap_draft_info tr th, #s_eap_draft_info tr td,
#s_eap_draft tr th, #s_eap_draft tr td,
.s_eap_draft_app tr th, .s_eap_draft_app tr td
 {
	padding: 5px;
	border: 1px solid;
	font-size: .9em;
	font-weight: bold;
}
#s_eap_draft_info tr th,
#s_eap_draft tr th,
.s_eap_draft_app tr th {
	background-color: gainsboro;
	text-align: center;
	
}
	#s_eap_draft td, .s_eap_draft_app td {
	width: 100px;
	text-align: center;
}
/* sweetalert스타일 */
/*모달창  */
.swal-modal {
	background-color: white;
	border: 3px solid white;
}
/*ok버튼  */
.swal-button--danger {
	background-color: #0583F2;
	color: white;
}
/*cancel버튼  */
.swal-button--cancel {
	background-color: red;
	color: white;
}
/*ok버튼  */
.swal-button--confirm {
	background-color: #0583F2;
	color: white;
}
/*아이콘 테두리  */
.swal-icon--info {
	border-color: #0583F2;
}
/*아이콘 i 윗부분  */
.swal-icon--info:after {
	background-color: #0583F2;
}
/*아이콘 i 아랫부분  */
.swal-icon--info:before {
	background-color: #0583F2;
}
/*타이틀  */
.swal-title {
	font-size: 20px;
	color: black;
}
/*텍스트  */
.swal-text {
	color: black;
}
/* datepicker css */
.ui-widget-header {
	border: 0px solid #dddddd;
	background: #fff;
}

.ui-datepicker-calendar>thead>tr>th {
	font-size: 14px !important;
}

.ui-datepicker .ui-datepicker-header {
	position: relative;
	padding: 10px 0;
}

.ui-state-default, .ui-widget-content .ui-state-default,
	.ui-widget-header .ui-state-default, .ui-button, html .ui-button.ui-state-disabled:hover,
	html .ui-button.ui-state-disabled:active {
	border: 0px solid #c5c5c5;
	background-color: transparent;
	font-weight: normal;
	color: #454545;
	text-align: center;
}

.ui-datepicker .ui-datepicker-title {
	margin: 0 0em;
	line-height: 16px;
	text-align: center;
	font-size: 14px;
	padding: 0px;
	font-weight: bold;
}

.ui-datepicker {
	display: none;
	background-color: #fff;
	border-radius: 4px;
	margin-top: 10px;
	margin-left: 0px;
	margin-right: 0px;
	padding: 20px;
	padding-bottom: 10px;
	width: 300px;
	box-shadow: 10px 10px 40px rgba(0, 0, 0, 0.1);
	padding-top: 10px;
	
}

.ui-widget.ui-widget-content {
	border: 1px solid #eee;
}

#datepicker:focus>.ui-datepicker {
	display: block;
}

.ui-datepicker-prev, .ui-datepicker-next {
	cursor: pointer;
}

.ui-datepicker-next {
	float: right;
}

.ui-state-disabled {
	cursor: auto;
	color: hsla(0, 0%, 80%, 1);
}

.ui-datepicker-title {
	text-align: center;
	padding: 10px;
	font-weight: 100;
	font-size: 20px;
}

.ui-datepicker-calendar {
	width: 100%;
}

.ui-datepicker-calendar>thead>tr>th {
	padding: 5px;
	font-size: 20px;
	font-weight: 400;
}

.ui-datepicker-calendar>tbody>tr>td>a {
	color: #000;
	font-size: 12px !important;
	font-weight: bold !important;
	text-decoration: none;
}

.ui-datepicker-calendar>tbody>tr>.ui-state-disabled:hover {
	cursor: auto;
	background-color: #fff;
}

.ui-datepicker-calendar>tbody>tr>td {
	border-radius: 100%;
	width: 44px;
	height: 30px;
	cursor: pointer;
	padding: 5px;
	font-weight: 100;
	text-align: center;
	font-size: 12px;
}

.ui-datepicker-calendar>tbody>tr>td:hover {
	background-color: transparent;
	opacity: 0.6;
}

.ui-state-hover, .ui-widget-content .ui-state-hover, .ui-widget-header .ui-state-hover,
	.ui-state-focus, .ui-widget-content .ui-state-focus, .ui-widget-header .ui-state-focus,
	.ui-button:hover, .ui-button:focus {
	border: 0px solid #cccccc;
	background-color: transparent;
	font-weight: normal;
	color: #2b2b2b;
}

.ui-widget-header .ui-icon {
	background-image: url('https://media.discordapp.net/attachments/692994434526085184/995979886768439306/btns.png');
}

.ui-icon-circle-triangle-e {
	background-position: -20px 0px;
	background-size: 36px;
}

.ui-icon-circle-triangle-w {
	background-position: -0px -0px;
	background-size: 36px;
}

.ui-datepicker-calendar>tbody>tr>td:first-child a {
	color: red !important;
}

.ui-datepicker-calendar>tbody>tr>td:last-child a {
	color: #0099ff !important;
}

.ui-datepicker-calendar>thead>tr>th:first-child {
	color: red !important;
}

.ui-datepicker-calendar>thead>tr>th:last-child {
	color: #0099ff !important;
}

.ui-state-highlight, .ui-widget-content .ui-state-highlight,
.ui-widget-header .ui-state-highlight {
	border: 0px;
	background: rgb(255, 192, 203);
	border-radius: 50%;
	padding-top: 10px;
	padding-bottom: 10px;
	width: 30px;
}

.inp {
	padding: 10px 10px;
	background-color: #f1f1f1;
	border-radius: 4px;
	border: 0px;
}

.inp:focus {
	outline: none;
	background-color: #eee;
}

select.ui-datepicker-month {
	border-radius: 5px;
	padding: 5px;
	width: 80px !important;
}

select.ui-datepicker-year {
	border-radius: 5px;
	padding: 5px;
	margin-left: 10px !important;
	width: 80px !important;
}

.ui-datepicker .ui-datepicker-prev, .ui-datepicker .ui-datepicker-next {
	top: 9px !important;
}
/* 달력이전다음버튼 변경하는 클래스 */
/* .ui-icon ui-icon-circle-triangle-e{ */
	
/* } */



</style>
<title>${title}</title>
<%@ include file="../layout/prestyle.jsp"%>
</head>
<body>
	<sec:authentication property="principal.empVO" var="empVO" />
	<%@ include file="../layout/sidebar.jsp"%>
	<main class="main-wrapper">
		<%@ include file="../layout/header.jsp"%>
		<section class="section">
		<form id="atrz_dr_form" action="/atrz/insertAtrzLine" method="post" enctype="multipart/form-data">
			<div class="container-fluid">
				<!-- 여기서 작업 시작 -->
				<!-- <p>${attachFileVOList}</p> -->
				<div class="row">
					<div class="col-sm-12 mb-3 mb-sm-0">
						<!-- 결재요청 | 임시저장 | 결재선지정 | 취소  -->
						<div class="col card-body" id="approvalBtn">
							<!-- 새로운 버튼 -->
							<div class="tool_bar">
								
								<div class="critical d-flex gap-2 mb-3">
									<!--성진스 버튼-->
									<button id="s_eap_app_top" type="button" 
										class="btn btn-outline-primary d-flex align-items-center gap-1 s_eap_app"
										style="padding: 0.4rem 1rem; font-size: 0.95rem;">
										<span class="material-symbols-outlined fs-5">upload</span> 결재요청
									</button>
									<a id="s_eap_storTo" type="button" 
										class="btn btn-outline-success d-flex align-items-center gap-1 s_eap_stor"
										style="padding: 0.4rem 1rem; font-size: 0.95rem;"> 
										<span class="material-symbols-outlined fs-5">downloading</span> 임시저장
									</a> <a id="s_appLine_btn" type="button"
										class="btn btn-outline-info d-flex align-items-center gap-1"
										data-bs-toggle="modal" data-bs-target="#atrzLineModal"
										style="padding: 0.4rem 1rem; font-size: 0.95rem;"> 
										<span class="material-symbols-outlined fs-5">error</span> 결재선 지정
									</a> 
									<a type="button" class="btn btn-outline-danger d-flex align-items-center gap-1 atrzLineCancelBtn"
										style="padding: 0.4rem 1rem; font-size: 0.95rem;"> 
										<span class="material-symbols-outlined fs-5">cancel</span> 취소
									</a>
								</div>
							</div>

							<!-- 새로운 버튼 -->
						</div>
						<!-- 모달창 인포트 -->
						<c:import url="../documentForm/approvalLineModal.jsp" />
							<div class="card">
								<div class="card-body">
									<!-- 여기다가 작성해주세요(준희) -->
									<!-- 기능 시작 -->
									<!-- 전자결재 양식 수정도 가능 시작 -->
									<!-- <p>${atrzVO}</p> -->
									<div id="s_eap_content_box_left" class="s_scroll">
										<div class="s_div_container s_scroll">
											<div style="text-align: center; font-size: 2em; font-weight: bold; padding: 20px;">기안서</div>

											<div style="float: left; width: 230px; margin: 0 30px;">
												<table border="1" id="s_eap_draft_info" class="text-center">
													<tr>
														<!-- 기안자 정보가져오기 -->
														<th>기안자</th>
														<td>${empVO.emplNm}</td>
													</tr>
													<tr>
														<th>기안부서</th>
														<td>${empVO.deptNm}</td>
													</tr>
													<tr>
														<!-- 기안일 출력을 위한 것 -->
														<jsp:useBean id="now" class="java.util.Date" />
														<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" var="today" />
														<th>기안일</th>
														<td>
															<c:out value="${today}"/>
														</td>
													</tr>
													<tr>
														<th>문서번호</th>
														<td id="s_dfNo">${atrzVO.atrzDocNo}</td>
													</tr>
												</table>
											</div>

											<div style="float: left; width: 130px; margin-right: 10px;">
												<table border="1" id="s_eap_draft">
													<tr>
														<th rowspan="2">신청</th>
														<td>${empVO.clsfCodeNm}</td>
													</tr>
													<tr>
														<td>${empVO.emplNm}</td>
													</tr>
												</table>
											</div>


											<div style="float: right; margin-right: 20px;" id="s_eap_draft_app">
												<table border="1" class="s_eap_draft_app">
													<tbody>
														<!-- 결재자: atrzTy = 'N' -->
														<tr id="trAtrzLine" class="trAtrzLine">
															<th rowspan="3">결재</th>
															<c:forEach var="atrzLineVO" items="${atrzVO.atrzLineVOList}">
																<c:if test="${atrzLineVO.atrzTy eq '1'}">
																	<!-- <p>${atrzLineVO}</p> -->
																	<td data-atrz-ln-sn="${atrzLineVO.atrzLnSn}" data-sanctner-empno="${atrzLineVO.sanctnerEmpno}"
																		data-atrz-ty="${atrzLineVO.atrzTy}" data-dcrb-author-yn="${atrzLineVO.dcrbAuthorYn}"
																		data-sanctner-clsf-code="${atrzLineVO.sanctnerClsfCode}">${atrzLineVO.sanctnerClsfNm}</td>
																</c:if>
															</c:forEach>
														</tr>
														<tr>
															<c:forEach var="atrzLineVO" items="${atrzVO.atrzLineVOList}">
																<c:if test="${atrzLineVO.atrzTy eq '1'}">
																	<td style="text-align: center;">
																		<c:choose>
																			<c:when test="${atrzLineVO.sanctnProgrsSttusCode eq '10'}">
																				<img src="/assets/images/atrz/afterRe.png" style="width: 50px; display: block; margin: 0 auto;">
																			</c:when>
																			<c:when test="${atrzLineVO.sanctnProgrsSttusCode eq '20'}">
																				<img src="/assets/images/atrz/return.png" style="width: 50px; display: block; margin: 0 auto;">
																			</c:when>
																			<c:when test="${atrzLineVO.sanctnProgrsSttusCode eq '30'}">
																				<img src="/assets/images/atrz/cancel.png" style="width: 50px; display: block; margin: 0 auto;">
																			</c:when>
																			<c:otherwise>
																				<img src="/assets/images/atrz/before.png" style="width: 50px; display: block; margin: 0 auto;">
																			</c:otherwise>
																		</c:choose>
																		<span style="display: block; margin-top: 5px;">${atrzLineVO.sanctnerEmpNm}</span>
																		<input type="hidden" name="atrzLnSn" id="s_dfNo" value="${atrzLineVO.atrzLnSn}" />
																		<input type="hidden" name="sanctnerEmpno" value="${atrzLineVO.sanctnerEmpno}" />
																		<input type="hidden" name="atrzDocNo" value="${atrzLineVO.atrzDocNo}" />
																	</td>
																</c:if>
															</c:forEach>
														</tr>
														<tr style="height: 30px;">
															<c:forEach var="atrzLineVO" items="${atrzVO.atrzLineVOList}">
																<c:if test="${atrzLineVO.atrzTy eq '1'}">
																	<td style="font-size: 0.8em;">
																		<c:choose>
																			<c:when test="${atrzLineVO.sanctnProgrsSttusCode eq '20'}">
																				<span style="color: red;">
																					<fmt:formatDate value="${atrzLineVO.sanctnConfmDt}" pattern="yyyy-MM-dd" />
																				</span>
																			</c:when>
																			<c:when test="${atrzLineVO.sanctnProgrsSttusCode eq '30'}">
																				<span style="display: block; width: 100%; height: 1px; background-color: gray; transform: rotate(-15deg); margin: 10px auto;"></span>
																			</c:when>
																			<c:otherwise>
																				<span style="color: black;">
																					<fmt:formatDate value="${atrzLineVO.sanctnConfmDt}" pattern="yyyy-MM-dd" />
																				</span>
																			</c:otherwise>
																		</c:choose>
																	</td>
																</c:if>
															</c:forEach>
														</tr>

												
														<!-- 참조자: atrzTy = 'Y' -->
														<c:set var="hasReference" value="false" />
														<c:forEach var="atrzLineVO" items="${atrzVO.atrzLineVOList}">
															<c:if test="${atrzLineVO.atrzTy eq '0'}">
																<c:set var="hasReference" value="true" />
															</c:if>
														</c:forEach>
												
														<c:if test="${hasReference eq true}">
															<tr class="trAtrzLine">
																<th rowspan="2">참조</th>
																<c:forEach var="atrzLineVO" items="${atrzVO.atrzLineVOList}">
																	<c:if test="${atrzLineVO.atrzTy eq '0'}">
																		<td data-atrz-ln-sn="${atrzLineVO.atrzLnSn}" data-sanctner-empno="${atrzLineVO.sanctnerEmpno}"
																		data-atrz-ty="${atrzLineVO.atrzTy}" data-dcrb-author-yn="${atrzLineVO.dcrbAuthorYn}"
																		data-sanctner-clsf-code="${atrzLineVO.sanctnerClsfCode}">${atrzLineVO.sanctnerClsfNm}</td>
																	</c:if>
																</c:forEach>
															</tr>
															<tr>
																<c:forEach var="atrzLineVO" items="${atrzVO.atrzLineVOList}">
																	<c:if test="${atrzLineVO.atrzTy eq '0'}">
																		<td>
																			${atrzLineVO.sanctnerEmpNm}
																			<input type="hidden" name="atrzLnSn" value="${atrzLineVO.atrzLnSn}" />
																			<input type="hidden" name="sanctnerEmpno" value="${atrzLineVO.sanctnerEmpno}" />
																		</td>
																	</c:if>
																</c:forEach>
															</tr>
														</c:if>
													</tbody>
												</table>
											</div>
												<div style="padding: 50px 10px 20px; clear: both;">
													<div
														style="display: inline-block; font-size: 1.2em; font-weight: bold;">제목
														:</div>
													<input type="text" class="form-control" value="${atrzVO.atrzSj}" 
														style="display: inline-block; width: 90%; margin-left: 5px;"
														id="s_dr_tt" name="atrzSj">
												</div>
												<div style="border: 1px solid lightgray; margin: 10px;"></div>
												<div style="margin: 0 10px;">
													<div style="padding: 10px 0;">
														<div class="s_frm_title mb-2"><b>상세 내용</b></div>
														<textarea class="form-control"
															style="resize: none; height: 150px;" id="s_sp_co" name="atrzCn"
															required="required" rows="2" cols="20" wrap="hard" >${atrzVO.atrzCn}</textarea>
													</div>
													<%--첨부파일 구성하기--%>
													<div class="mb-3">
														<form action="/fileUpload" method="post" enctype="multipart/form-data">
															<file-upload
																	label="첨부파일"
																	name="uploadFile"
																	max-files="1"
																	contextPath="${pageContext.request.contextPath }"
																	uploaded-file="${attachFileVOList}"
																	atch-file-no="${atrzVO.atchFileNo}"
															></file-upload>
														</form>
													</div>
												</div>
										</div>
									</div>
									
									<!-- 전자결재 양식 수정도 가능 끝 -->
									<!-- 기능 끝 -->
									<!-- 여기다가 작성해주세요(준희) -->
								</div>
							</div>
							<!-- 상하 버튼 추가 -->
							<div class="tool_bar">
								<div class="critical d-flex gap-2 mt-3">
									<!--성진스 버튼-->
									<button id="s_eap_app_bottom" type="button" 
										class="btn btn-outline-primary d-flex align-items-center gap-1 s_eap_app"
										style="padding: 0.4rem 1rem; font-size: 0.95rem;">
										<span class="material-symbols-outlined fs-5">upload</span> 결재요청
									</button>
									<a id="s_eap_storBo" type="button" 
										class="btn btn-outline-success d-flex align-items-center gap-1 s_eap_stor"
										style="padding: 0.4rem 1rem; font-size: 0.95rem;"> 
										<span class="material-symbols-outlined fs-5">downloading</span> 임시저장
									</a> 
									<a id="s_appLine_btn" type="button"
										class="btn btn-outline-info d-flex align-items-center gap-1"
										data-bs-toggle="modal" data-bs-target="#atrzLineModal"
										style="padding: 0.4rem 1rem; font-size: 0.95rem;"> 
										<span class="material-symbols-outlined fs-5">error</span> 결재선 지정
									</a> 
									<a type="button" class="btn btn-outline-danger d-flex align-items-center gap-1 atrzLineCancelBtn"
										style="padding: 0.4rem 1rem; font-size: 0.95rem;"> 
										<span class="material-symbols-outlined fs-5">cancel</span> 취소
									</a>
								</div>
							</div>
						<!-- 상하 버튼 추가 -->
						</form>
					</div>
				</div>
				<!-- 여기서 작업 끝 -->
			</div>
		</form>
		</section>
		<%@ include file="../layout/footer.jsp"%>
	</main>
	<%@ include file="../layout/prescript.jsp"%>
	<!-- 제이쿼리사용시 여기다 인포트 -->


<script>
//페이지이동시 바로 
//dateCnt() 실행하기

//제목 너무 길게 입력하면 입력초과 스왈
document.getElementById('s_dr_tt').addEventListener('input', function (event) {
        const maxLength = 60; // 최대 길이 설정
        const inputField = this;
        const inputValue = inputField.value;

        // 입력값이 최대 길이를 초과할 경우
        if (inputValue.length > maxLength) {
            swal({
                title: "입력 초과",
                text: "제목은 최대 60자까지 입력 가능합니다.",
                icon: "warning",
                button: "확인"
            }).then(() => {
                // 초과된 부분을 잘라내기
                inputField.value = inputValue.substring(0, maxLength);
            });

            // 입력 처리를 중단
            event.preventDefault();
            return;
        }
    });
</script>

<script>
//JSON Object List
let authList = [];
let atrzLineList = [];

$(document).ready(function() {
//******* 폼 전송 *******
	//******* 폼 전송 *******
	$(".s_eap_app").on("click",function(){
		event.preventDefault();

		// 제목, 내용이 비어있을 때
		if($('#s_dr_tt').val() == "" || $('#s_sp_co').val() == "") {
			swal({
					title: "제목 또는 내용이 비어있습니다.",
					text: "다시 확인해주세요.",
					icon: "error",
					closeOnClickOutside: false,
					closeOnEsc: false
				});
			return;
		}
		
		
		var eap_content = $('#s_sp_co').val();

		
		
		
		let jnForm = document.querySelector("#atrz_dr_form");
		
		let formData = new FormData();
		formData.append("docFormNm","D");
		formData.append("docFormNo",3);
		formData.append("atrzSj",jnForm.atrzSj.value);
		formData.append("atrzCn",jnForm.atrzCn.value);

		if(jnForm.uploadFile.files.length){
			for(let i=0; i< jnForm.uploadFile.files.length; i++)
			formData.append("uploadFile",jnForm.uploadFile.files[i]);
		}
  
  
		document.querySelectorAll("input[name='removeFileId']").forEach(element => {
			formData.append("removeFileId", element.value);
		});

		let atrzLineList = [];
		for(let i=0; i< authList.length; i++){
			let auth = authList[i];
			let atrzLine = {
				atrzLnSn: auth.atrzLnSn ,
				sanctnerEmpno: auth.emplNo,
				atrzTy: auth.auth,
				dcrbAuthorYn: auth.flex,
				sanctnerClsfCode: auth.clsfCode,
			}
			atrzLineList.push(atrzLine);			
		}
		console.log("atrzLineList",atrzLineList);


		formData.append("atrzLineList",new Blob([JSON.stringify(atrzLineList)],{type:"application/json"}));

		formData.append("emplNo",secEmplNo);
		formData.append("emplNm",secEmplNm);
		formData.append("atrzDocNo",$("#s_dfNo").text());

		document.querySelectorAll("input[name='removeFileId']").forEach(element => {
			formData.append("removeFileId", element.value);
		});

		const junyError = (request, status, error) => {
					console.log("code: " + request.status)
					console.log("message: " + request.responseText)
					console.log("error: " + error);
            }

		$.ajax({
			url:"/atrz/atrzDraftInsert",
			processData:false,
			contentType:false,
			type:"post",
			data: formData,
			dataType:"text",
			success : function(result){
				console.log("체킁:",result);
				if(result=="쭈니성공"){
					//location.href = "컨트롤러주소";  //  .href 브라우져 성능 향상을 위해서 캐쉬가 적용 될 수도 있고, 안 될 수도 있어
					swal({
						title: "결재요청이 완료되었습니다.",
						text: "",
						icon: "success",
						closeOnClickOutside: false,
						closeOnEsc: false,
						button: "확인"
					}).then(() => {
						location.replace("/atrz/document?tab=1")
					});
				}
			},
			error: junyError
		})
	});

	//임시저장 클릭시 
	$(".s_eap_stor").on("click",function(){
		event.preventDefault();
		// alert("체킁");
		console.log("전송하기 체킁 확인");
		console.log("s_eap_app_bottom->authList : ", authList);
		
		let jnForm = document.querySelector("#atrz_dr_form");

		let formData = new FormData();
		formData.append("docFormNm","D");
		formData.append("docFormNo",3);
		formData.append("atrzSj",jnForm.atrzSj.value);
		formData.append("atrzCn",jnForm.atrzCn.value);
  
		if(jnForm.uploadFile.files.length){
			for(let i=0; i< jnForm.uploadFile.files.length; i++)
			formData.append("uploadFile",jnForm.uploadFile.files[i]);
		}

		let atrzLineList = [];

		$(".trAtrzLine").children("td").each(function(idx, atrzLine){
			let atrzLine2 = {
				atrzLnSn: $(this).data("atrzLnSn"),
				sanctnerEmpno: $(this).data("sanctnerEmpno"),
			    atrzTy: $(this).data("atrzTy"),
			    dcrbAuthorYn: $(this).data("dcrbAuthorYn"),
				sanctnerClsfCode:$(this).data("sanctnerClsfCode")
			}
			atrzLineList.push(atrzLine2);	

			formData.append("atrzLineVOList["+idx+"].atrzLnSn",atrzLine2.atrzLnSn);
			formData.append("atrzLineVOList["+idx+"].sanctnerEmpno",atrzLine2.sanctnerEmpno);
			formData.append("atrzLineVOList["+idx+"].atrzTy",atrzLine2.atrzTy);
			formData.append("atrzLineVOList["+idx+"].dcrbAuthorYn",atrzLine2.dcrbAuthorYn);
			formData.append("atrzLineVOList["+idx+"].sanctnerClsfCode",atrzLine2.sanctnerClsfCode);
		});

		document.querySelectorAll("input[name='removeFileId']").forEach(element => {
			formData.append("removeFileId", element.value);
		});
		console.log("atrzLineList",atrzLineList);

		formData.append("atrzLineList",new Blob([JSON.stringify(atrzLineList)],{type:"application/json"}));

		formData.append("emplNo",secEmplNo);
		formData.append("emplNm",secEmplNm);
		formData.append("atrzDocNo",$("#s_dfNo").text());

		console.log("전송하기 체킁 확인");
		console.log("s_eap_app_bottom->formData : ", formData);
	
		const junyError = (request, status, error) => {
					console.log("code(ajaxError): " + request.status)
					console.log("message(ajaxError): " + request.responseText)
					console.log("error(ajaxError): " + error);
        }

		//기안서 임시저장 시작
		$.ajax({
			url:"/atrz/atrzDraftStorage",
			processData:false,
			contentType:false,
			type:"post",
			data: formData,
			dataType:"text",
			success : function(result){
				console.log("체킁:",result);
				if(result=="임시저장성공"){
					swal({
						title: "임시저장이 완료되었습니다.",
						text: "",
						icon: "success",
						closeOnClickOutside: false,
						closeOnEsc: false,
						button: "확인"
					}).then(() => {
						// location.replace("/atrz/document");
					});
				}
			},
			error: junyError
		})
		//기안서 임시저장 끝
	})
	//임시저장 후 끝
	
	//버튼눌렀을때 작동되게 하기 위해서 변수에 담아준다.
	let emplNo = null;  //선택된 사원 번호 저장
	

	let secEmplNo = '${empVO.emplNo}';
	let secEmplNm = '${empVO.emplNm}';

	console.log("secEmplNo번호 : ",secEmplNo);
	console.log("secEmplNm이름 : ",secEmplNm);
	
// 	여기 중호쌤이랑 같이했던거 해보기
	$(document).on("click",".jstree-anchor",function(){
		let idStr = $(this).prop("id");//20250008_anchor
// 		console.log("개똥이->idStr : ",idStr);
		emplNo = idStr.split("_")[0];//20250008
		console.log("결재선지정->emplNo : ",emplNo);
		
	});//end jstree-anchor
	
	let selectedType = "sign";  // 기본은 결재

	$(document).on("click", "#add_appLine", function(){
		selectedType = "sign";  // 결재선
		addAppLine();
	});

	$(document).on("click", "#add_attLine", function(){
		selectedType = "ref";  // 참조자
		addAppLine();
	});


	function addAppLine() {
	if(!emplNo){
		swal({ text: "선택한 사원이 없습니다.", icon: "error" });
		return;
	}
	if(secEmplNo == emplNo){
		swal({ text: "본인은 결재선 리스트에 추가할 수 없습니다.", icon: "error" });
		return;
	}
	for(let i = 0; i< $('.s_td_no').length; i++){
		if($('.s_td_no').eq(i).text() == emplNo){
			swal({ text: "이미 추가된 사원입니다.", icon: "error" });
			return;
		}
	}
	//기안자 정보담기
	$.ajax({
		url:"/atrz/insertAtrzEmp",
		data:{"emplNo":emplNo},
		type:"post",
		dataType:"json",
		success:function(result){
			let noLen = $(".clsPo").length;

			console.log("결재선지정->result : ",result);
			let selectHtml = `
				<select class="form-select selAuth" aria-label="Default select example">
					<option value="1" \${selectedType == "sign" ? "selected" : ""}>결재</option>
					<option value="0" \${selectedType == "ref" ? "selected" : ""}>참조</option>
				</select>
			`;
			
			// 참조일 때는 checkbox 없이 처리
			let checkboxHtml = "";
			if (selectedType == "sign") {
				checkboxHtml = `
					<input class="form-check-input flexCheckDefault" type="checkbox" value="Y" />
				`;
			}

			let strA = `
					<tr class="clsTr" id="row_\${emplNo}" name="emplNm">
						<th>\${noLen+1}</th>
						<th style="display: none;" hidden class="s_td_no">\${result.emplNo}</th>
						<th class="s_td_name">\${result.emplNm}</th>
						<th>\${result.deptNm}</th>
						<th class="clsPo">\${result.posNm}</th>
						<input type="hidden" name="emplNo" class="emplNo" value="\${result.emplNo}"/>
						<input type="hidden" name="clsfCode" class="clsfCode" value="\${result.clsfCode}"/>
						log.info("결재선지정->result : ",result);
						<th hidden>\${selectHtml}</th>
						<th>\${checkboxHtml}</th>
					</tr>
				`;
			let strB = `
					<tr class="clsTr" id="row_\${emplNo}" name="emplNm">
						<th></th>
						<th style="display: none;" hidden class="s_td_no">\${result.emplNo}</th>
						<th class="s_td_name">\${result.emplNm}</th>
						<th>\${result.deptNm}</th>
						<th>\${result.posNm}</th>
						<input type="hidden" name="emplNo" class="emplNo" value="\${result.emplNo}"/>
						<input type="hidden" name="clsfCode" class="clsfCode" value="\${result.clsfCode}"/>
						log.info("결재선지정->result : ",result);
						<th hidden>\${selectHtml}</th>
						<th>\${checkboxHtml}</th>
					</tr>
				`;

			// ✅ 타입에 따라 위치 다르게 append
			if(selectedType === "sign"){
				$(".s_appLine_tbody_new").append(strA);  // 위쪽 결재선
			}else{
				$(".s_appLine_tbody_ref").append(strB);  // 아래쪽 참조자
			}
		}
	});
}
	
	//왼쪽버튼의 경우에는 결재선선택과는 거리가 멀기 때문에 필요없음
	//왼쪽 버튼을 눌렀을때 삭제처리되어야함
	//결재자 리스트 삭제
	$(document).on("click", "#remo_appLine",function(){
		let lastRow = $(".s_appLine_tbody_new .clsTr");   //가장마지막에 추가된 tr
		//삭제대상확인 
		// console.log("삭제대상 :", lastRow.prop("outerHTML"));
		
		if(lastRow.length > 0){
			lastRow.last().remove(); 
			reindexApprovalLines();
			}else{
				swal({
					title: "",
					text: "삭제할 결재자가 없습니다.",
					icon: "error",
					closeOnClickOutside: false,
					closeOnEsc: false,
					button: "확인"
				});
					return;
			}
		});
	//전체테이블 순번 다시 매기기
	function reindexApprovalLines() {
		$(".clsTr").each(function(index) {
			$(this).find("th").first().text(index + 1);
		});
	}

	//참조자 리스트 삭제
	$(document).on("click", "#remo_attLine", function() {
    let refRows = $(".s_appLine_tbody_ref .clsTr");

    if (refRows.length > 0) {
        // 마지막 참조자 삭제
        refRows.last().remove();
        // 순번 다시 매기기
        reindexApprovalLines();
    } else {
        swal({
            title: "",
            text: "삭제할 참조자가 없습니다.",
            icon: "error",
            closeOnClickOutside: false,
            closeOnEsc: false,
			button: "확인"
        });
    }
});

	
	//결재선지정에서 확인버튼 눌렀을때
	$("#s_add_appLine_list").click(function(){
		if($(".s_appLine_tbody_new .clsTr").length==0){
			swal({
				title: "결재선이 지정되어있지 않습니다.",
				text: "결재할 사원을 추가해주세요!",
				icon: "error",
				closeOnClickOutside: false,
				closeOnEsc: false,
				button: "확인"
			});
			return;
		}
		var appLineArr = [];
		
		//1) List<AtrzLineVO>  [{da},{fa},{af,afa}]
		let formData = new FormData();
		
		//I. 결재자 정보
		for(let i= 0; i<$(".s_td_no").length; i++){
			let sTdNo = $(".s_td_no").eq(i).text();
			console.log("sTdNo : ",sTdNo);
			
			appLineArr.push($(".s_td_no").eq(i).text());
			console.log("appLineArr : ",appLineArr);
			//위의 코드까지는 찍힘
			
			//2) 결재자 번호 입력
			formData.append("emplNoArr",sTdNo);
		}
		var obj = {"emplNo" : appLineArr};
		
		
		//JSON Object
		let data = {};
		//II. 권한 정보(.selAuth)
		authList = [];
		$(".selAuth").each(function(idx,auth){
			//전결여부 기본 N
			let dcrbAuthorYn = "N";
			
			if($(this).parent().next().children().eq(0).is(":checked")){//true
				dcrbAuthorYn = "Y";
			}else{
				dcrbAuthorYn = "N";
			}
			
			/* data -> AtrzLineVO
			emplNo -> sanctnerEmpno
			clsfCode -> sanctnerClsfCode
			auth -> atrzTy
			flex -> dcrbAuthorYn
			atrzLnSn : atrzLnSn
			*/
			let atrzDocNo = $("#s_dfNo").text(); // 여기서 가져온다!

			data = {
				"emplNo":$(this).parent().parent().children("th").eq(1).html(),
				"clsfCode": $(this).parent().parent().find(".clsfCode").val(),
				"auth":$(this).val(),
				"flex":dcrbAuthorYn,
				"atrzLnSn":(idx+1),
				"atrzDocNo":$("#s_dfNo").text(),
				"docFormNm":"D",
				"docFormNo":3
			};
			//결재선 목록
			authList.push(data);

			// formData.append("atrzLineVOList["+idx+"].atrzDocNo", atrzDocNo);
			formData.append("atrzVO.atrzDocNo", $("#s_dfNo").val());
			formData.append("atrzLineVOList["+idx+"].sanctnerEmpno",data.emplNo);
			formData.append("atrzLineVOList["+idx+"].sanctnerClsfCode",data.clsfCode);
			formData.append("atrzLineVOList["+idx+"].atrzTy",data.auth);//Y / N
			formData.append("atrzLineVOList["+idx+"].dcrbAuthorYn",data.flex);//  1 / 0
			formData.append("atrzLineVOList["+idx+"].atrzLnSn",data.atrzLnSn);
			formData.append("authList", JSON.stringify(authList)); // 배열은 stringify해서 보내도 무방
		});	
		
		//authList의 clsfCode를 가져와서 DB에 담기
		console.log("순번권한전결여부authList : ", authList);
		
		formData.append("docFormNm","D");
		formData.append("docFormNo",3);
		/*
		["20250008","20250010"]
		*/
		console.log("obj.emplNo : ",obj.emplNo);
		//이게 굳이 필요있나 싶음
		//결재선 리스트에 있는 사원번호를 가져와 결재선 jsp에 이름 부서 직책 찍기

		// ❗ 여기 중요: JSON.stringify 후 Blob으로 넣기
		formData.append("atrzLineList",new Blob([JSON.stringify(atrzLineList)], { type: "application/json" })
		);
		//결재선 인서트 하는 부분은 어떻게 해야하리 모르겠다.....
		//asnyc를 써서 
		//여기서 부터확인이 안되는듯 
		$.ajax({
			url:"/atrz/updateAtrzLine",
			processData:false,
			contentType:false,
			type:"post",
			data: formData,
			dataType:"json",
			success : function(atrzVO){
				swal({
					title: "결재선이 지정되었습니다.",
					text: "",
					icon: "success",
					closeOnClickOutside: false,
					closeOnEsc: false,
					button: "확인"
				});
				$(".btn-close").trigger('click');
				// alert("결재선이 지정되었습니다.");
				//새로고침
				location.href = location.href;
				console.log("atrzVO : ", atrzVO);

				//문서번호 채우기
				// $("#s_dfNo").html(atrzVO.atrzDocNo);

				let result = atrzVO.emplDetailList;

				//result : List<EmployeeVO>
				console.log("result : ", result);

				let tableHtml = `<table border="1" class="s_eap_draft_app"><tbody>`;

				// authList를 기반으로 분리
				const approvalList = [];
				const referenceList = [];

				$.each(authList, function(i, authItem) {
					const matched = result.find(emp => emp.emplNo === authItem.emplNo);
					if (matched) {
						matched.flex = authItem.flex; // flex 정보도 보존
						if (authItem.auth === "1") {
							approvalList.push(matched);
						} else if (authItem.auth === "0") {
							referenceList.push(matched);
						}
					}
				});
				//길준희 여기부터 시작
				// 가. 결재파트 시작
				if (approvalList.length > 0) {
					tableHtml += `<tr><th rowspan="2">결재</th>`;
					$.each(approvalList, function(i, employeeVO){
						$("#atrz_dr_form").append(`<input type="hidden" name="empNoList" value="\${employeeVO.emplNo}"/>`);
						tableHtml += `<td>\${employeeVO.clsfCodeNm}</td>`;
					});

					tableHtml += `</tr><tr>`;
					$.each(approvalList, function(i, employeeVO){
						tableHtml += `<td><img src="/assets/images/atrz/before.png"
							style="width: 50px;">
							<span style="display: block; margin-top: 5px; name="sanctnerEmpno">\${employeeVO.emplNm}</span></td>`;				
						});
					tableHtml += `</tr>`;
				}

				// 나. 참조파트 시작
				if (referenceList.length > 0) {
					tableHtml += `<tr><th rowspan="2">참조</th>`;
					$.each(referenceList, function(i, employeeVO){
						$("#atrz_dr_form").append(`<input type="hidden" name="empAttNoList" value="\${employeeVO.emplNo}"/>`);
						tableHtml += `<td>\${employeeVO.clsfCodeNm}</td>`;
					});

					tableHtml += `</tr><tr>`;
					$.each(referenceList, function(i, employeeVO){
						tableHtml += `<td name="sanctnerEmpno">\${employeeVO.emplNm}</td>`;
					});

					tableHtml += `</tr>`;
				}

				tableHtml += `</tbody></table>`;

				$("#s_eap_draft_app").html(tableHtml);
			}//end success
	});//ajax
	//여기서 결재선에 담긴 애들을 다 하나씩 담아서 post로
})
});


</script>
	<!-- 주니가 입력한 스크립트 끝 -->
</body>

</html>
