<%@ page import="pl.helenium.lunchtime.User" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
</head>
<body>
    <g:renderErrors bean="${orderItem}" />
    <g:form action="save">
        <g:hiddenField name="order.id" value="${orderItem.order.id}" />
        <label for="user">Zamawiający</label><g:select name="user.id" from="${User.list()}" optionKey="id" optionValue="username" /><br />
        <label for="meal">Danie</label><g:textField name="meal" value="${orderItem.meal}" /><br />
        <label for="price">Cena</label><g:textField name="price" value="${orderItem.price}" /><br />
        <g:submitButton name="Dodaj pozycję" />
    </g:form>
</body>
</html>
