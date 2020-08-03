<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="root" value="${pageContext.request.contextPath}" /> 

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <title>vga_furniture</title>
  
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="${root }/css/style.css">
  <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
  <script type="text/JavaScript" src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="${root }/javascript/script.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  

</head>

<body onload="showImage()">
<jsp:include page="/menu/top.jsp" flush='false' />

  <DIV class="form" style="margin:0px auto; width:80%; text-align:center">
  
  <FORM name='frm' id='frm' method='POST' action='./mypage.do' class="form-horizontal">
    <input type='hidden' name='managerno' id='managerno' value='${param.managerno }'>
			<div class="card card1"> <div style="margin:20px auto; font-size:20px;">${managerVO.manager_name }</div>
			<img src='./img/${managerVO.manager_img }'/> <br>
			<b>이름</b> : ${managerVO.manager_name } <br>
			<b>생년월일</b> : ${managerVO.manager_yy }/${managerVO.manager_mm }/${managerVO.manager_dd }<br>
			<button type="button" onclick="location.href='${root}/manager/manager_img_update.do?managerno=${managerno }'">사진 수정</button></div>
			<div class="card card1">  <div style="margin:30px auto; font-size:20px;">연락처</div>
			<b>연락처 정보를 확인하세요.</b><br><br>
			<b>e-mail</b> : ${managerVO.manager_email }<br>
			<b>통신사</b> : ${managerVO.manager_telecom }<br>
			<b>휴대전화</b> : ${managerVO.manager_phone }<br><br>
			<button type="button" onclick="location.href='${root}/manager/contact_update.do?managerno=${managerno }'">연락처 수정</button></div>
			<div class="card card1">  <div style="margin:40px auto; font-size:20px;">비밀번호</div>
			vga_furniture 로그인 시 사용하는 <br>
			비밀번호를 주기적으로 변경하여 <br>
			개인정보를 안전하게 보호하세요.<br><br>
			<button type="button" onclick="location.href='${root}/manager/passwd_update.do?managerno=${managerno}'">비밀번호 변경</button></div>
			<div class="card card1">  <div style="margin:40px auto; font-size:20px;">배송지 관리</div>
			내가 저장한 배송지 및 <br>
			최근 사용한 배송지를 <br>
			관리할 수 있습니다.<br><br>
			<button type="button" onclick="location.href='${root}/destination/list.do?managerno=${managerno}'">조회하기</button></div>
			<div class="card card1"></div>
			<div class="card card1"></div>
  </FORM>
  </div>

 <jsp:include page="/menu/bottom.jsp" flush='false' />
</body>
</html>