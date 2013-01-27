<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
</head>
<body>
    <g:renderErrors bean="${order}" />
    <g:form action="save">
        <label for="restaurant">Restauracja</label><g:textField name="restaurant" value="${order.restaurant}" />
        <g:submitButton name="Dodaj zamówienie" />
    </g:form>
</body>
</html>
