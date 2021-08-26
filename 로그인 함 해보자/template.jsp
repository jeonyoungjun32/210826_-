


<!-- < 템플릿 페이지를 사용 하는 이유 > -->
<!-- 웹 사이트의 좌측이나 상단메뉴, 하단 등 고정된 레이아웃 페턴을 작성하고 
메뉴에 따라 메인 영역에만 내용이 바뀌도록 하여 편의성 제공을 해서 이때 인코딩template을 많이 사용한다

-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%
	//한글 깨짐방지
request.setCharacterEncoding("UTF-8");

//★★★★★★  left.jsp에서 전달 된 " 템플릿 페이지에 표시할 웹 페이지 이름을 얻는다."★★★★

//파라미터 값을 얻어 와야지
String pagefile = request.getParameter("page");

//페이지에 아무것도 없으면 이걸 실행
if (pagefile == null)
	pagefile = "newitem";
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main입니다!</title>
<style>
table {
	margin: 0 auto;
	width: 90%;
	color: gray;
	border: 1px solid gray;
}
</style>
</head>
<body>
	<table>
		<tr>

			<td colspan="3" height="43" align="left"><jsp:include
					page="top.jsp" /></td>
		</tr>

		<tr>
			<!-- align="left" 	valign="top"  2개 쓰면 오른쪽 위로 보내겠다임!!-->
			<td colspan="3" height="43" align="left" valign="top">
				<jsp:include page="left.jsp" />
			</td>
			
			<td colspan="2" align="center">
<%-- 				<jsp:include page="<%=pagefile%>.jsp" /> 오류 발생  --%>
				<jsp:include page='<%=pagefile+".jsp"%>' /> <!--★★★★★          ' " " '  이거 중요하닌깐 조심해요  ★★★★★★-->
			</td>

		</tr>

		<tr>

			<td colspan="3" height="40">
			<jsp:include page="bottom.jsp" /></td>
		</tr>
	</table>




</body>
</html>




















