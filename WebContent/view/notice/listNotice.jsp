<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
 <meta charset="UTF-8">
 <meta name="description" content="member board Web Application">
 <meta name="keywords" content="member, board, article, mvc">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <title></title>
 <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/assets/css/font-awesome.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/templatemo-hexashop.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/owl-carousel.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/lightbox.css">
    
    
    <script src="<%=request.getContextPath()%>/assets/js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="<%=request.getContextPath()%>/assets/js/popper.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="<%=request.getContextPath()%>/assets/js/owl-carousel.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/accordions.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/datepicker.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/scrollreveal.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/waypoints.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/jquery.counterup.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/imgfix.min.js"></script> 
    <script src="<%=request.getContextPath()%>/assets/js/slick.js"></script> 
    <script src="<%=request.getContextPath()%>/assets/js/lightbox.js"></script> 
    <script src="<%=request.getContextPath()%>/assets/js/isotope.js"></script> 
    
    <!-- Global Init -->
    <script src="<%=request.getContextPath()%>/assets/js/custom.js"></script>
       <style>
		.t1{ 
		width: 950px;
 	    margin-left: auto; 
 	    margin-right: auto; 
/*   	    border: 1px solid #bcbcbc; */
  	    text-align: center;
/*   	    border-collapse: separate; border-radius: 8px; */
 	 	} 
 	 	.t2{ 
		width: 950px;
 	    margin-left: auto; 
 	    margin-right: auto; 
  	    border: 1px solid #bcbcbc;
  	    text-align: center;
 	 	} 
 	 	
 	 	.hang{ 
		height:30px;
 	 	} 
	 	
	 	th {
/*  	    border: 1px solid #bcbcbc; */
/* 		border: 1px solid #EFEFEF; */
	 	}
	 	
	 	#nu{ width:50px; background: #C5CAD7;
	 	}
	 	#ti{ width:230px; background: #C5CAD7;
	 	}
	 	#wr{ width:90px; background: #C5CAD7;
	 	}
	 	#rd{ width:150px; background: #C5CAD7;
	 	}
	 	#md{ width:230px; background: #C5CAD7;
	 	}
	 	#ct{ width:60px; background: #C5CAD7;
	 	}
	 	
	 	td {
	    width: 120px;
/*   	    border: 1px solid #bcbcbc; */
	 	}
	 	
 	 	tr { 
 	    height: 60px; 
/*  	    border: 1px solid #bcbcbc; */
 	 	} 
	 	
/* 		#rowSizeFrm { */
/* 		text-align: right; margin-right: auto; */
/* 		} */
	 	
	 	
	 	h1 { text-align: center; }
/* 	 	p { text-align: right; margin-right:200px;} */
/* 	 	p { text-align: right; margin-right: auto; margin-left: auto;} */
/*  	 	.write {float:left; margin-left: auto;} */
  	 	.write {float:left;}
  	 	.choice {float:right;}
/* 	 	.home { text-align: left; margin-left:150px;} */
	 	#sub{
	 	  color: white;
		  text-align: center;
		  background: #7C8EBF;
		  border: solid 1px #191970;
		  border-radius: 3px;
	 	}
	 	
	 	#wri{
	 	  color: white;
		  text-align: center;
		  background: #7C8EBF;
		  border: solid 1px #191970;
		  border-radius: 3px;
	 	}
/*         #C5CAD7 */
        </style>
        
        
        <script>
        	$(document).ready(function(){
//         		alert("asdsd");
        		//게시물 출력수 선택
        		//<select name="rowSize" id="rowSize";">에 이벤트
        		$("#rowSize").change(function(){  //
        			//let val = $("select#rowSize option:selected").val(); //띄어쓰기==>  select의 자식요소 option
        			$("#rowSizeFrm").submit();
        		});
        		
        	});

		
    	    function authCheck(gr){ 
				//alert(gr);
				//gr=999;
 	          if(gr==null || gr==1){ 
	             alert("권한이 없습니다.");
<%--          	             location.replace("<%=request.getContextPath()%>/notice/list.do?rowSize=${rsize}"); --%>
 	             location.href='<%=request.getContextPath()%>/notice/list.do?rowSize=${rsize}';
 	          }else{
<%--          	             location.replace("<%=request.getContextPath()%>/notice/write.do?rowSize=${rsize}"); --%>
 	             location.href='<%=request.getContextPath()%>/notice/write.do?rowSize=${rsize}';
	          }
 	          
	    }
        
        </script>
    
    
    

</head>
<body>
<%@ include file="../module/top00.jsp" %>

<%-- 컨트롤러에 의해서 아래와 같이 Model을 받았다   23.01.13. 받는 모델을 변경!!!!! listNotice에서 NoticePage로
List<Notice> listNotice=~~~~;
 request.setAttribute("listNotice", listNotice); 
 
 NoticePage noticePage<=목록+페이징처리 관련내용.
 request.setAttribute("noticePage", noticePage);
 request.setAttribute("pageNo", pageNo);
 request.setAttribute("rsize", rsize);
 request.setAttribute("searchPage", searchPage);
 request.setAttribute("choice", choice);
 request.setAttribute("keyword", keyword);
 --%>

<%-- <%=session.getValue("AUTHUSER") %> --%>
<%-- <%=session.getAttribute("AUTHUSER") %> --%>
<%-- <%=session.getAttribute("grade") %> --%>
<%-- <%=session.getValue("AUTHUSER") %> --%>
<%-- ${AUTHUSER.emp_grade} --%>

<%--
${noticePage.getContent()} <hr/><hr/><hr/>
${noticePage.content} <hr/><hr/><hr/> --%>

<%-- ${keyword} --%>




<%-- ${listNotice} <hr/><hr/><hr/><hr/> --%>
<!-- <hr/> -->
<%----%>
<%--   	

	<c:forEach var="item" items="${listNotice}"> 
	<c:if test="${noticePage.hasNotices()}">
  	<c:forEach var="item" items="${noticePage.content}">
 		<c:out value="${item}" /><br/><br/>
 		*글번호 : <c:out value="${item.number}" /><br/><br/>
 		*제목 : <c:out value="${item.title}" /><br/><br/>
 		*작성자 ID : <c:out value="${item.writer.writer_id}" /><br/><br/>
 		*작성자 이름 : <c:out value="${item.writer.writer_name}" /><br/><br/>
 		*작성일 : <c:out value="${item.regdate}" /><br/><br/>
 		*조회수 : <c:out value="${item.read_cnt}" /><br/><br/>
 	</c:forEach>
 	</c:if>
 	
 	--%>
 	<%--Notice 클래스 안에 get메소드를 뽑는 것이다. --%>
<%--  		*작성자id<c:out value="${item.getWriter().writer_id}" /><br/><br/>  
				이렇게 작성 해도 된다.. 그런데 보기 좋게 get지우고 소문자바꾸고 괄호지우고 하는것. 
	 		*작성자이름<c:out value="${item.getWriter().writer_name}" /><br/><br/> 
 	<br/><br/><br/><br/><br/><br/>--%>


<%-- <a href="<%=request.getContextPath()%>/index.jsp">HOME</a> --%>
<p class="home" style="text-align: left; margin-left:150px;">
<a href="<%=request.getContextPath()%>/view/main.jsp">HOME</a>
<!-- <h6>공 지 사 항</h6> -->
</p>
<hr/>
<!--  <h1>공  지  사  항</h1> -->
 
 
<br/><br/><br/><br/>
 
<div class="choice">
 <form name="rowSizeFrm" id="rowSizeFrm" action="<%=request.getContextPath()%>/notice/list.do" method="post">
 	게시물수 : 
	<select name = "rowSize" id = "rowSize" >
			<option value="" disabled>선택</option>
			<option value="1" <c:if test="${rsize == 1}">selected</c:if>>1</option>
         	<option value="3" <c:if test="${rsize == 3}">selected</c:if>>3</option>
         	<option value="5" <c:if test="${rsize == 5}">selected</c:if>>5</option>
         	<option value="10" <c:if test="${rsize == 10}">selected</c:if>>10</option>
    </select> 
 </form>
 </div>

 	<div class="write">
 	<button type="button" id="wri" onclick="authCheck(${AUTHUSER.emp_grade});">글쓰기</button>
	</div>
	
	
 <table class="t1" border="1" style="table-layout: fixed">		
 	<thead>
 		<tr class="hang">
 			<th id="nu">번호</th>
 			<th id="ti">제목</th>
 			<th id="wr">작성자</th>
 			<th id="rd">작성일</th>
 			<th id="md">최종수정일</th>
 			<th id="ct">조회수</th>
 		</tr>
 	</thead>
 

 	<tbody>
 	<%--  keyword가 없으면서 게시글이 없는 경우 --%>
 	<%-- JSTL if조건문 이용하여 출력 --%>
 	<c:if test="${empty keyword or (keyword eq '')}">
	 	<c:if test="${noticePage.hasNoNotices()}"> 
	 	 <tr>
	 		<td colspan="6" style="text-align:center;">게시글이 없습니다.</td>
	 	</tr>
	 	</c:if>
 	</c:if>
 	<%--  keyword가 있으면서 결과가 없는 경우 --%>
 	<%-- JSTL if조건문 이용하여 출력 --%>
 	 <c:if test="${not empty keyword or (keyword ne '')}">
	 	<c:if test="${noticePage.hasNoNotices()}"> 
	 	 <tr>
	 		<td colspan="6" style="text-align:center;">결과가 없습니다.</td>
	 	</tr>
	 	</c:if>
 	</c:if>

 	<%-- JSTL forEach 반복문 이용하여 출력시작 
 		for(int i=1; i<=10; i++){syso (i)} 1 2 3 ....9 10  
 		for(타입 변수명 : 컬렉션명){ syso(변수명) }
 		--%>
<%--  	<c:forEach var="i" begin="1" end="10" step="1"> 
  	<c:forEach var="item" items="${listNotice}">
 		<c:out value="${item}" /><br/><br/>
 	</c:forEach>
 	<br/><br/><br/><br/><br/><br/> --%>
 	
<%--  	<c:forEach var="item" items="${listNotice}"> --%>
	<c:if test="${noticePage.hasNotices()}"> 
 	<c:forEach var="item" items="${noticePage.content}">
 	<tr>
 		<td>${item.number}</td>
 		<td><a href="<%=request.getContextPath()%>/notice/read.do?no=${item.number}&pageNo=${noticePage.currentPage}&rowSize=${rsize}">${item.title}</a></td>
 		<td>${item.writer.writer_id}</td>
<%--  		<td>${item.regdate}(YYYY-MM-DD)</td> --%>
<%--  		<td><fmt:formatDate type="date" value="${item.regdate}" /></td> --%>
 		<td>
<%--  			<fmt:formatDate type="date" value="${item.regdate}" /><br/> --%>
<%--  			<fmt:formatDate pattern="yyyy-MM-dd" type="date" value="${item.regdate}" /><br/> --%>
<%--  			<fmt:formatDate pattern="yyyy년 MM월 dd일" type="date" value="${item.regdate}" /><br/> --%>
 			<fmt:formatDate pattern="yyyy.MM.dd. HH:mm:ss" type="date" value="${item.regdate}" /></td>
 		<td><fmt:formatDate pattern="yyyy.MM.dd. HH:mm:ss" type="date" value="${item.moddate}" /></td>
 		<td>${item.read_cnt}</td>
 	</tr>
 	</c:forEach>
 	</c:if>
 	</tbody>
  </table>	
 	
 	<br/><br/>
 	<%-- paging출력 부분 --%>
 <span id="page" style="text-align:center;">
 	<div>
		<c:if test="${empty keyword or (keyword eq '')}">
	 		<%-- JSTL if조건문: 이전 출력 --%>
	 		<c:if test="${noticePage.startPage>5}">
	 		 <a href="<%=request.getContextPath()%>/notice/list.do?pageNo=${noticePage.startPage-5}&rowSize=${rsize}">Prev</a> 
	 		</c:if>	
	 			
	 		<%-- JSTL forEach조건문: 페이지 번호 출력 --%>
	 		<c:forEach var="pNo"
	 			begin="${noticePage.startPage}" end="${noticePage.endPage}">
	 		 <a href="<%=request.getContextPath()%>/notice/list.do?pageNo=${pNo}&rowSize=${rsize}">[${pNo}]</a> 
	 		</c:forEach>
	 		
	 		<%-- JSTL forEach조건문: 다음 출력 --%>
	 		<c:if test="${noticePage.endPage<noticePage.totalPages}">
	 		 <a href="<%=request.getContextPath()%>/notice/list.do?pageNo=${noticePage.startPage+5}&rowSize=${rsize}">Next</a> 
	 		</c:if>	
		</c:if>
		
		<c:if test="${not empty keyword or (keyword ne '')}">
		 	<c:if test="${noticePage.hasNoNotices()}"> 
		 		<a href="<%=request.getContextPath()%>/notice/list.do">전체목록보기</a> 
		 	</c:if>
		 	<c:if test="${noticePage.hasNotices()}"> 
			<%-- JSTL if조건문: 이전 출력 --%>
	 		<c:if test="${noticePage.startPage>5}">
	 		 <a href="<%=request.getContextPath()%>/notice/list.do?pageNo=${noticePage.startPage-5}&rowSize=${rsize}&choice=${choice}&keyword=${keyword}">Prev</a> 
	 		</c:if>	
	 			
	 		<%-- JSTL forEach조건문: 페이지 번호 출력 --%>
	 		<c:forEach var="pNo"
	 			begin="${noticePage.startPage}" end="${noticePage.endPage}">
	 		 <a href="<%=request.getContextPath()%>/notice/list.do?pageNo=${pNo}&rowSize=${rsize}&choice=${choice}&keyword=${keyword}">[${pNo}]</a> 
	 		</c:forEach>
	 		
	 		<%-- JSTL forEach조건문: 다음 출력 --%>
	 		<c:if test="${noticePage.endPage<noticePage.totalPages}">
	 		 <a href="<%=request.getContextPath()%>/notice/list.do?pageNo=${noticePage.startPage+5}&rowSize=${rsize}&choice=${choice}&keyword=${keyword}">Next</a>
	 		 </c:if>
	 		 <br/><br/>
	 		 <a href="<%=request.getContextPath()%>/notice/list.do">전체목록보기</a>	 
	 		</c:if>	
		</c:if>
		
	</div>
 </span>
 	
<!--  	--------------------------------------------------------------------------------------------------------------------------------------------- -->
<%--  <table class="t2" style="table-layout: fixed">
 	<thead>
 		<tr class="hang">
 			<th id="nu">번호</th>
 			<th id="ti">제목</th>
 			<th id="wr">작성자</th>
 			<th id="rd">작성일</th>
 			<th id="md">최종수정일</th>
 			<th id="ct">조회수</th>
 		</tr>
 	</thead>



 	<tbody>
 	<!-- 게시글이 없는 경우 -->
 	<!-- JSTL if조건문 이용하여 출력 -->
 	<c:if test="${searchPage.hasNoNotices()}"> 
 	 <tr>
 		<td colspan="6" style="text-align:center;">결과가 없습니다.</td>
 	</tr>
 	</c:if>

	<c:if test="${searchPage.hasNotices()}"> 
 	<c:forEach var="item" items="${searchPage.content}">
 	<tr>
 		<td>${item.number}</td>
 		<td><a href="<%=request.getContextPath()%>/notice/read.do?no=${item.number}&pageNo=${searchPage.currentPage}&rowSize=${rowSize}">${item.title}</a></td>
 		<td>${item.writer.writer_id}</td>
<!--  		<td>${item.regdate}(YYYY-MM-DD)</td> -->
<!--  		<td><fmt:formatDate type="date" value="${item.regdate}" /></td> -->
 		<td>
<!--  			<fmt:formatDate type="date" value="${item.regdate}" /><br/> -->
<!--  			<fmt:formatDate pattern="yyyy-MM-dd" type="date" value="${item.regdate}" /><br/> -->
<!--  			<fmt:formatDate pattern="yyyy년 MM월 dd일" type="date" value="${item.regdate}" /><br/> -->
 			<fmt:formatDate pattern="yyyy.MM.dd. HH:mm:ss" type="date" value="${item.regdate}" /></td>
 		<td><fmt:formatDate pattern="yyyy.MM.dd. HH:mm:ss" type="date" value="${item.moddate}" /></td>
 		<td>${item.read_cnt}</td>
 	</tr>
 	</c:forEach>
 	</c:if>
 	</tbody>

 	</table>
 	<!-- 반복문 이용하여 출력 끝-->
 	
<br/><br/>
 	<!-- paging출력 부분 -->
 <span id="page2" style="text-align:center;">
 	<div>
 		<!-- JSTL if조건문: 이전 출력 -->
 		<c:if test="${searchPage.startPage>5}">
 		 <a href="<%=request.getContextPath()%>/notice/list.do?pageNo=${searchPage.startPage-5}&rowSize=${rsize}">prev</a> 
 		</c:if>	
 			
 		<!-- JSTL forEach조건문: 페이지 번호 출력 -->
 		<c:forEach var="pNo"
 			begin="${searchPage.startPage}" end="${searchPage.endPage}">
 		 <a href="<%=request.getContextPath()%>/notice/list.do?pageNo=${pNo}&rowSize=${rsize}">[${pNo}]</a> 
 		</c:forEach>
 		
 		<!-- JSTL forEach조건문: 다음 출력 -->
 		<c:if test="${searchPage.endPage<searchPage.totalPages}">
 		 <a href="<%=request.getContextPath()%>/notice/list.do?pageNo=${searchPage.startPage+5}&rowSize=${rsize}">next</a> 
 		</c:if>	
	</div>
 </span> --%>
 
 <br/><br/><br/><br/>
<!--  검색기능 폼 -->
 <form name="searchFrm" id="searchFrm" action="<%=request.getContextPath()%>/notice/list.do" 
 		method="post" style="text-align:center;">
 <input type="hidden" name="pageNo" id="pageNo" value="${pageNo}"/>
 <input type="hidden" name="rowSize" id="rowSize" value="${rsize}"/> 
 <select name="choice" id="choice"> <!-- 높이:20 중간맞춤 -->
<!--     <option value="sel">선택</option> -->
    <option value="title" <c:if test="${choice == 'title'}">selected</c:if>>제목</option>
    <option value="writer_id" <c:if test="${choice == 'writer_id'}">selected</c:if>>작성자</option>
<!--     <option value="content">내용</option> -->
</select>
<lebel class="hidden"></lebel>	<!-- ?choice=title&keyword=~~~ -->
<input type="text" name="keyword" id="keyword" value="${param.keyword}"/>
 
<button type="submit" id="sub">검색</button>
 
</form>
 
 
 
 
 
 
 
 
 
<%@ include file="../module/bottom00.jsp" %>
</body>
</html>






