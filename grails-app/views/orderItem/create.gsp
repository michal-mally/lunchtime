<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
</head>
<body>
    <g:renderErrors bean="${orderItem}" />
    <g:form action="save">
        <label for="user">Zamawiający</label><g:textField name="user" value="${orderItem.user}" /><br />
        <label for="meal">Danie</label><g:textField name="meal" value="${orderItem.meal}" /><br />
        <label for="price">Cena</label><g:textField name="price" value="${orderItem.price}" /><br />
        <g:submitButton name="Dodaj zamówienie" />
    </g:form>
</body>
</html>
