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


<script type="text/javascript">

</script>

</head> 

<body>
  <jsp:include page="/menu/top.jsp" flush='false' />

  <div style="margin:20px auto; width:80%; text-align:center">
  <DIV style="margin:0px auto; font-size:20px;">
    관리자 등급 목록
  </DIV>
  <FORM name='frm' id='frm' method='POST' action='./list.do'>

  <c:forEach var="managerlvVO" items="${list }">  <!-- request 객체에 접근 -->
    <c:set var="managerlvno" value="${managerlvVO.managerlvno}" />
    <div class="card card1">
    <div style="margin:20px auto; font-size:20px;">${managerlvVO.managerlv_name }</div>
	<b>연봉</b> : ${managerlvVO.managerlv_pay } <br>
	<b>업무</b> : ${managerlvVO.managerlv_do }<br><br>
	<button type="button" onclick="location.href='${root}/managerlv/update.do?managerlvno=${managerlvno}'">수정</button>
	<button type="button" onclick="location.href='${root}/managerlv/delete.do?managerlvno=${managerlvno}'">삭제</button><br><br>
    <button type="button" onclick="location.href='${root}/managerlv/read.do?managerlvno=${managerlvno }'">상세보기 및 관리자관리</button></div>
  </c:forEach>

  </FORM>
</div>
<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>

</html>


