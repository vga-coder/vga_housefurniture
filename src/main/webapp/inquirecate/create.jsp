<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="root" value="${pageContext.request.contextPath}" /> 

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <title>♥SKINFIT♥</title>
  
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
    문의 카테고리 추가
  </DIV>
  
<FORM name='frm' method='POST' action='./create.do' class="form-horizontal">
  <div class="form-group">
     <label class="control-label col-md-3">문의 카테고리 이름</label>
     <div class="col-md-9">
       <input type='text' name='inquirecate_name' value='' required="required" 
                  autofocus="autofocus" class="form-control" style='width: 50%;'>
     </div>
  </div>
  <div class="form-group">
     <label class="control-label col-md-3">문의 카테고리 내용</label>
     <div class="col-md-9">
       <input type='text' name='inquirecate_content' value='' required="required" 
                  autofocus="autofocus" class="form-control" style='width: 50%;'>
     </div>
  </div>  

  <div class="content_bottom_menu" style="padding-right: 20%;">
    <button type="submit" class="btn">등록</button>
    <button type="button" onclick="location.href='./list.do'" class="btn">목록</button>
  </div>

</FORM>
</div>
<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>
 
</html>   
 