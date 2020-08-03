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
    $('#btn_DaumPostcode').on('click', DaumPostcode); 
    $('#btn_send').on('click', send); 
  });

function send() {
	var frm = $('#frm');
	var recipient = $('#recipient', frm).val();
	var recipient_phone = $('#recipient_phone', frm).val();
	var postcode = $('#postcode', frm).val();
	var address1 = $('#address1', frm).val();
	var address2 = $('#address2', frm).val();

	if ($.trim(recipient).length == 0) { // id를 입력받지 않은 경우
	  alert('배송받는 사람의 이름을 입력하세요.');
	  return false;
	}
	if ($.trim(recipient_phone).length == 0) { // id를 입력받지 않은 경우
	  alert('배송받는 사람의 연락처를 입력하세요.');
	  return false;
	}
	if ($.trim(postcode).length == 0) { // id를 입력받지 않은 경우
	  alert('주소를 정확하게 입력하세요.');
	  return false;
	}
	if ($.trim(address1).length == 0) { // id를 입력받지 않은 경우
	  alert('주소를 정확하게 입력하세요.');
	  return false;
	}
	if ($.trim(address2).length == 0) { // id를 입력받지 않은 경우
	  alert('주소를 정확하게 입력하세요.');
	  return false;
	}
     
    $('#frm').submit();
 }
</script>
</head> 

<body>
  <jsp:include page="/menu/top.jsp" flush='false' />

  <div class="form" style="margin:20px auto; width:80%; text-align:center">


 	<div style="font-size:20px;" class='title_line'>배송지 추가</div><br>
			자주 쓰는 배송지를 편리하게 통합 관리 하세요!<br><br><br>
  
<FORM name='frm' id="frm" method='POST' action='./create.do'>
  <input type='hidden' name='memno' id='memno' value='${param.memno }'>

  <div>
     <label for="recipient" style='font-size: 0.9em;'>배송받는 사람</label>  
       <input type='text' name='recipient' id='recipient' value='' required="required" 
                  placeholder="배송받는 사람">
  </div>
  <div>
     <label for="recipient_phone" style='font-size: 0.9em;'>배송받는 연락처</label>  
       <input type='text' name='recipient_phone' id='recipient_phone' value='' required="required" 
                  placeholder="배송받는 연락처">
  </div>
  <br>
  <div>
     <label for="postcode" style='font-size: 0.9em;'>우편번호</label><br>  
       <input type='text' name='postcode' id='postcode' value='' required="required" 
                 style="width:68%" placeholder="우편번호">
       <button type="button" id='btn_DaumPostcode'>우편번호 찾기</button>
  </div>

  <div>
     <label for="address1" style='font-size: 0.9em;'>주소</label>  
       <input type='text' name='address1' id='address1' value='' required="required" 
                  placeholder="주소">
  </div>
   
  <div>
     <label for="address2" style='font-size: 0.9em;'>상세주소</label>  
       <input type='text' name='address2' id='address2' value='' required="required" 
                  placeholder="상세주소">
  </div> 
    
    <div>
      <div>

<!-- ---------- DAUM 우편번호 API 시작 ---------- -->
<div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 110px;position:relative">
  <img src="//i1.daumcdn.net/localimg/localimages/07/postcode/320/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
</div>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    // 우편번호 찾기 화면을 넣을 element
    var element_wrap = document.getElementById('wrap');

    function foldDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_wrap.style.display = 'none';
    }

    function DaumPostcode() {
        // 현재 scroll 위치를 저장해놓는다.
        var currentScroll = Math.max(document.body.scrollTop, document.documentElement.scrollTop);
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = data.address; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 기본 주소가 도로명 타입일때 조합한다.
                if(data.addressType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('address1').value = fullAddr;

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_wrap.style.display = 'none';

                // 우편번호 찾기 화면이 보이기 이전으로 scroll 위치를 되돌린다.
                document.body.scrollTop = currentScroll;
                
                $('#address2').focus();
            },
            // 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
            onresize : function(size) {
                element_wrap.style.height = size.height+'px';
            },
            width : '100%',
            height : '100%'
        }).embed(element_wrap);

        // iframe을 넣은 element를 보이게 한다.
        element_wrap.style.display = 'block';
    }
</script>
<!-- ---------- DAUM 우편번호 API 종료 ---------- -->

      </div>
    </div>
<br><br>
  <div>
    <button type="button" id="btn_send">등록</button>
    <button type="button" onclick="location.href='./list.do?memno=${memno}'">목록</button>
  </div>

</FORM>
</div>
<jsp:include page="/menu/bottom.jsp" flush='false' />
</body>
 
</html>   
 