<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<p>${list}</p>
<c:forEach items="${list}" var="list">
    <tr>
        <td>Employee ID: <c:out value="${list.name}"/></td>
        <td>Employee Pass: <c:out value="${list.gender}"/></td>  
    </tr>
</c:forEach>

</body>
</html>