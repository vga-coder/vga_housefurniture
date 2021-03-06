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
    /* 테이블의 테두리 영역을 확인하기 위해 사용하는 소스입니다. */
    
    table.tbl_sty{
    border: 1px solid gray;
    border-collapse: collapse;
    }
    table.tbl_sty tr{
    border: 1px solid gray;
    }
    table.tbl_sty th{
    border: 1px solid gray;
    padding: 20px;
    }
    table.tbl_sty td{
    border: 1px solid gray;
    padding: 20px;
    } 
  </style>

<script type="text/javascript">

</script>
</head> 

<body>
  <jsp:include page="/menu/top.jsp" flush='false' />

  <div style="margin:20px auto; width:80%; text-align:center">


  <DIV style="margin:20px auto; font-size:20px;" class='title_line'>
    관리자 목록
  </DIV>
  
  <div class='menu_line'></div>
  
  <FORM name='frm' id='frm' method='POST' action='./create.do' class="form-horizontal">

 <TABLE style="margin:20px auto">
  <colgroup>
    <col style='width: 10%;'/>
    <col style="width: 20%;"/>
    <col style='width: 20%;'/>
    <col style='width: 20%;'/>
    <col style='width: 20%;'/>
    <col style='width: 10%;'/>
  </colgroup>
 
  <thead>  
  <TR>
    <TH class="th_bs">직책</TH>
    <TH class="th_bs">아이디</TH>
    <TH class="th_bs">이름</TH>
    <TH class="th_bs">생년월일</TH>
    <TH class="th_bs">입사일</TH>
    <TH class="th_bs">관리</TH>
  </TR>
  </thead>
  
  <tbody>
  <c:forEach var="managerVO" items="${list }">  <!-- request 객체에 접근 -->
    <c:set var="managerno" value="${managerVO.managerno}" />
    <TR>
      <TD>${managerVO.managerlvno }</TD>
      <TD>${managerVO.manager_id }</TD>
      <TD>${managerVO.manager_name }</TD>
      <TD>${managerVO.manager_yy}년/${managerVO.manager_mm}월/${managerVO.manager_dd}일</TD>
      <TD>${managerVO.joindate}</TD>
      <TD><A href="./delete.do?managerno=${managerno}">삭제</A></TD>
    </TR>
  </c:forEach>
  </tbody>
 
</TABLE>
  </FORM>
</div>
<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>

</html>


