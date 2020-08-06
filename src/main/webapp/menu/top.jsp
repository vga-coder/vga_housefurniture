<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="root" value="${pageContext.request.contextPath}" /> 

<header>
    <div class="wrapper">
      <h1><A href='${root}/index.jsp'>vga_furniture</A></h1>
      <nav>
        <h2>Main Navigation</h2>
        <ul>
          <li><a href="#">Our Story</a></li>
          <li><a href="#">Menu</a></li>
          <li><a href="#">Reservations</a></li>
          <li><a href="#">News</a></li>
          <li><a href="#">Reviews</a></li>
          <c:choose>
        <c:when test="${sessionScope.mem_id == null}">
          <li><A href='${root}/loginmode.jsp'>login</A></li>
        </c:when>
        <c:when test="${sessionScope.mem_id != null}">
        <li><A href='${root}/mem/mypage_logout_select.jsp?memno=${memno}'>my page</A></li>
        </c:when>
        </c:choose>
        </ul>
      </nav>
    </div>
  </header>
  

 <div>
<hr style=width:100%>
  </div>