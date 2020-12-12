<%--
  Created by IntelliJ IDEA.
  User: anhnbt
  Date: 12/12/2020
  Time: 09:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<h1>Calculator</h1>
<form action="<c:url value="/calculator"/>" method="post">
    <div>
        <label for="firstNum">First Number:</label>
        <input type="text" name="firstNum" id="firstNum">
    </div>
    <div>
        <label for="secondNum">Second Number:</label>
        <input type="text" name="secondNum" id="secondNum">
    </div>
    <div>
        <button type="submit" name="calculate" value="+">Addition (+)</button>
        <button type="submit" name="calculate" value="-">Subtraction (-)</button>
        <button type="submit" name="calculate" value="*">Multiplication (*)</button>
        <button type="submit" name="calculate" value="/">Division (/)</button>
    </div>
    <c:if test="${requestScope['result'] != null}">
        <p>Result Division: <c:out value="${requestScope['result']}"/></p>
    </c:if>
</form>
</body>
</html>
