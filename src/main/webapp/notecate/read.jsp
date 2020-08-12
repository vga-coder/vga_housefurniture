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
    ${notecateVO.notecate_name } 공지사항 
  </DIV>
  
<FORM name='frm' method='POST' action='./read.do' class="form-horizontal">
<input type='hidden' name='notecateno' id='notecateno' value='${notecateVO.notecateno }'>
  <div class="form-group">
     <label class="control-label col-md-3">공지사항 기본상세</label>
     <div class="col-md-9">
       ${notecateVO.notecate_content }"
     </div>
  </div>
  <div class="form-group">
     <label class="control-label col-md-3">등록된 공지사항 글 수</label>
     <div class="col-md-9">
       ${notecateVO.notecnt }
     </div>
  </div>   
<br>
  <div class="content_bottom_menu" style="margin:auto;">
    <button type="button" onclick="location.href='./list.do'" class="btn">목록</button>
  </div>

</FORM>
</div>
<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>
 
</html>   
 