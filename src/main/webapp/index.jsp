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
<body>
<jsp:include page="/menu/top.jsp" flush='false' />


  <!-- Start homepage content -->

  <div id="main-banner">
    <img src="https://image.ibb.co/hiVAvv/banner.jpg" alt="Welcome to Resto">
  </div>

  <div class="wrapper">
  <section id="home-menu">
    <ul>
      <li>
        <span class="dish">Voluptate cillum fugiat</span>
        <span class="price">$30</span>
        <span class="description">Cheese, tomato, mushrooms, onions</span>
      </li>
      <li>
        <span class="dish">Voluptate cillum fugiat</span>
        <span class="price">$30</span>
        <span class="description">Cheese, tomato, mushrooms, onions</span>
      </li>
      <li>
        <span class="dish">Voluptate cillum fugiat</span>
        <span class="price">$30</span>
        <span class="description">Cheese, tomato, mushrooms, onions</span>
      </li>
      <li>
        <span class="dish">Voluptate cillum fugiat</span>
        <span class="price">$30</span>
        <span class="description">Cheese, tomato, mushrooms, onions</span>
      </li>
      <li>
        <span class="dish">Voluptate cillum fugiat</span>
        <span class="price">$30</span>
        <span class="description">Cheese, tomato, mushrooms, onions</span>
      </li>
      <li>
        <span class="dish">Voluptate cillum fugiat</span>
        <span class="price">$30</span>
        <span class="description">Cheese, tomato, mushrooms, onions</span>
      </li>
      <li>
        <span class="dish">Voluptate cillum fugiat</span>
        <span class="price">$30</span>
        <span class="description">Cheese, tomato, mushrooms, onions</span>
      </li>
      <li>
        <span class="dish">Voluptate cillum fugiat</span>
        <span class="price">$30</span>
        <span class="description">Cheese, tomato, mushrooms, onions</span>
      </li>
    </ul>
  </section>

  <section id="featured">
    <ul>
      <li>
        <img src="https://image.ibb.co/ehFAvv/thumb_1.jpg">
        <a href="#">Fugiat nulla sint</a>
        <span>$30</span>
        <span class="rating"></span>
      </li>
      <li>
        <img src="https://image.ibb.co/cZaoha/thumb_2.jpg">
        <a href="#">Fugiat nulla sint</a>
        <span>$30</span>
        <span class="rating"></span>
      </li>
      <li>
        <img src="https://image.ibb.co/cKvAvv/thumb_3.jpg">
        <a href="#">Fugiat nulla sint</a>
        <span>$30</span>
        <span class="rating"></span>
      </li>
      <li>
        <img src="https://image.ibb.co/e00zoF/thumb_4.jpg">
        <a href="#">Fugiat nulla sint</a>
        <span>$30</span>
        <span class="rating"></span>
      </li>
    </ul>
  </section>
  </div>


  <!-- End homepage content -->
<jsp:include page="/menu/bottom.jsp" flush='false' />

 
</body>
</html>