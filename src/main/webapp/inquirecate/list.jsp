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

  <style>
  .form {
  position: relative;
  z-index: 1;
  max-width: 1200px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
}
  .card {
  background: #fff;
  border-radius: 2px;
  display: inline-block;
  height: 350px;
  margin: 1rem;
  position: relative;
  width: 300px;
}

.card1 {
  box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
  transition: all 0.3s cubic-bezier(.25,.8,.25,1);
}
  </style>

<script type="text/javascript">

</script>
</head> 

<body>
  <jsp:include page="/menu/top.jsp" flush='false' />

  <div class="form" style="margin:20px auto; width:80%; text-align:center">
  <DIV style="margin:0px auto; font-size:20px;">
    회원 등급 목록
  </DIV>
  <FORM name='frm' id='frm' method='POST' action='./list.do'>

  <c:forEach var="inquirecateVO" items="${list }">  <!-- request 객체에 접근 -->
    <c:set var="inquirecateno" value="${inquirecateVO.inquirecateno}" />
    <div class="card card1">
    <div style="margin:20px auto; font-size:20px;">${inquirecateVO.inquirecate_name }</div>
	<b>내용</b> : ${inquirecateVO.inquirecate_content } <br>
	<button type="button" onclick="location.href='${root}/memlv/memlv_img_update.do?memlvno=${memlvno }'">로고 변경</button>
	<button type="button" onclick="location.href='${root}/memlv/update.do?memlvno=${memlvno}'">수정</button>
	<button type="button" onclick="location.href='${root}/memlv/delete.do?memlvno=${memlvno}'">삭제</button><br><br>
    <button type="button" onclick="location.href='${root}/memlv/read.do?memlvno=${memlvno }'">상세보기 및 회원관리</button></div>
  </c:forEach>

  </FORM>
</div>
<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>

</html>


