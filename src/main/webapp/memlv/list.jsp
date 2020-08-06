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

  <style>
  .form {
  position: relative;
  z-index: 1;
  max-width: 1200px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
}
  </style>

<script type="text/javascript">

</script>
</head> 

<body>
  <jsp:include page="/menu/top.jsp" flush='false' />

  <div style="margin:20px auto; width:80%; text-align:center">
  <DIV style="margin:0px auto; font-size:20px;">
    회원 등급 목록
  </DIV>
  <FORM name='frm' id='frm' method='POST' action='./list.do'>

<TABLE class='table table-striped'>
  <colgroup>
    <col style='width: 10%;'/>
    <col style="width: 10%;"/>
    <col style='width: 25%;'/>
    <col style='width: 25%;'/>
    <col style='width: 30%;'/>
  </colgroup>
 
  <thead>  
  <TR>
    <TH class="th_bs">등급</TH>
    <TH class="th_bs">로고</TH>
    <TH class="th_bs">조건</TH>
    <TH class="th_bs">혜택</TH>
    <TH class="th_bs">기타</TH>
  </TR>
  </thead>
  
  <tbody>
  <c:forEach var="memlvVO" items="${list }">  <!-- request 객체에 접근 -->
    <c:set var="memlvno" value="${memlvVO.memlvno}" />
    <TR>
      <TD>${memlvVO.memlv_name }</TD>
   	  <c:choose>
   	  <c:when test="${memlvVO.memlv_img == null}">
   	  <TD><A href="${root}/memlv/memlv_img_update.do?memlvno=${memlvno }"><img src='./logo/null.jpg' style="width:100px; height:70px;"/></A></TD>
     	</c:when>
   	  <c:when test="${memlvVO.memlv_img != null}">
		 <TD><A href="${root}/memlv/memlv_img_update.do?memlvno=${memlvno }"><img src='./img/${memlvVO.memlv_img }'/></A></TD>
	  </c:when>
	  </c:choose>
      <TD>${memlvVO.memlv_condition }</TD>
      <TD> ${memlvVO.memlv_benefit }</TD>
      <TD>
        <A href="${root}/memlv/update.do?memlvno=${memlvno}">수정</A>
        <A href="${root}/memlv/delete.do?memlvno=${memlvno}">삭제</A> <br>
        <A href="${root}/memlv/read.do?memlvno=${memlvno }">상세보기 및 회원관리</A>
      </TD>             
    </TR>
  </c:forEach>
  </tbody>
 
</TABLE>
<div><button type="button" onclick="location.href='./create.do'">회원 등급 추가</button></div>

  </FORM>
</div>
<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>

</html>


