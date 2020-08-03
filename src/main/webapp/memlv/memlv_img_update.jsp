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
  $(function() { // 자동 실행
    $('#btn_send').on('click', send); 
  });

  function send() {
    alert('사진이 수정되었습니다.');
    $('#frm').submit();
  }
  
</script>

</head> 
 
 
<body>
<jsp:include page="/menu/top.jsp" flush='false' />

<div class="form" style="margin:20px auto; width:80%; text-align:center">
	<div style="font-size:20px;" class='title_line'>vga_furniture 프로필</div><br>

 
			

<FORM name='frm' id='frm' method='POST' action='./memlv_img_update.do' enctype="multipart/form-data">
    <input type='hidden' name='memlvno' id='memlvno' value='${param.memlvno }'>       

    <div>
        <input type='file' name='memlv_imgMF' id='memlv_imgMF' 
                    value='' placeholder="파일 선택">
                    
		<b>등급</b> : ${memlvVO.memlv_name } <br>

        <button type="button" id='btn_send' >변경</button><br><br>
        <button type="button" onclick="location.href='./list.do'">취소</button>
    </div>
</FORM>
</div> 
<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>

</html>
