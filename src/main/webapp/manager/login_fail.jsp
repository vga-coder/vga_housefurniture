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
  $(function(){ 
  
  });
</script>

</head> 
<body>
<jsp:include page="/menu/top.jsp" flush='false' />
 
  <div class="form" style="margin:20px auto; width:80%; text-align:center">

	<DIV style="font-size: 20px;" class='title_line'>vga_furniture</DIV>
	<br><br>
	로그인에 실패하셨습니다. <br><br><br>
    <button type="submit" onclick="location.href='${pageContext.request.contextPath}/loginmode.jsp'">다시 로그인하기</button>
  
  </div>   
 
<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>
 
</html>

