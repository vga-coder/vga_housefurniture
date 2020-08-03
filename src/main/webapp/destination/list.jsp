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

  <div class="form" style="margin:20px auto; width:80%; text-align:center">


  <DIV style="margin:auto; font-size:20px;" class='title_line'>
   배송지 목록 
  </DIV>
  
  <div class='menu_line'></div>
  
  <FORM name='frm' id='frm' method='POST' action='./list.do'>
  <input type='hidden' name='memno' id='memno' value='${param.memno }'>

 <TABLE style="margin:20px auto">
  <colgroup>
    <col style='width: 15%;'/>
    <col style='width: 50%;'/>
    <col style='width: 10%;'/>
    <col style='width: 15%;'/>
    <col style='width: 10%;'/>
  </colgroup>
 
  <thead>  
  <TR>
    <TH class="th_bs">배송지</TH>
    <TH class="th_bs">주소</TH>
    <TH class="th_bs">연락처</TH>
    <TH class="th_bs">수정 · 삭제</TH>
    <TH class="th_bs">기본배송지</TH>
  </TR>
  </thead>
  
  <tbody>
  <c:forEach var="destinationVO" items="${list }">  <!-- request 객체에 접근 -->
    <c:set var="destinationno" value="${destinationVO.destinationno}" />
    <TR>
      <TD>${destinationVO.recipient }<br>
      <c:choose>
          <c:when test="${destinationVO.basic == 'A'}">
            <IMG src="./images/basic.JPG">
          </c:when>
      </c:choose>
      </TD>
      <TD>${destinationVO.postcode } <br>
      ${destinationVO.address1 }<br>
      ${destinationVO.address2 }</TD>
      <TD>${destinationVO.recipient_phone }</TD>
      <TD><A href="./update.do?memno=${memno}&destinationno=${destinationno}">수정</A> / <A href="./delete.do?memno=${memno}&destinationno=${destinationno}">삭제</A></TD>
      <TD><br>
     <c:choose>
      <c:when test="${destinationVO.basic == 'A'}">
        <A href="./update_basic.do?memno=${memno }&destinationno=${destinationno }"><IMG src="./images/check.JPG"></A>
      </c:when>
      <c:otherwise>
        <A href="./update_basic.do?memno=${memno }&destinationno=${destinationno }"><IMG src="./images/not.JPG"></A>
      </c:otherwise>
    </c:choose>
      </TD>
    </TR>
  </c:forEach>
  </tbody>
 
</TABLE>
<div><button type="button" onclick="location.href='./create.do?memno=${memno}'">배송지 추가</button></div>
  </FORM>
</div>
<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>

</html>


