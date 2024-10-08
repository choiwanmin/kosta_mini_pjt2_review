<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>

<h3>공고 목록</h3>
<table id="apply_list" class = "table table-striped table-hover">
<tr>
<th>공고제목</th>
<th>채용직무</th>
<th>공고등록일</th>
<th>공고마감일</th>
<th>공고저장상태</th>
</tr>

<c:forEach var="rllist" items="${rlList }">
<tr>
<td><a href="${pageContext.request.contextPath }/recruit/recruitdetail.do?wantedAuthNo=${rllist.wantedAuthNo }" onclick="a('${rllist.wantedAuthNo }')">${rllist.wantedTitle }</a></td>
<td>${rllist.jobsNm }</td>
<td>${rllist.regDt }</td>
<td>${rllist.closeDt }</td>
<c:if test="${rllist.saveStatus == 0}">
<td>임시 저장</td>
</c:if>
<c:if test="${rllist.saveStatus != 0}">
<td>공고 등록</td>
</c:if>
</tr>
</c:forEach>
</table>

</body>
</html>