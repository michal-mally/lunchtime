<%@ page import="pl.helenium.lunchtime.Restaurant" contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
</head>
<body>
    <g:renderErrors bean="${order}" />
    <g:form action="save">
        <label for="restaurant">Restauracja</label><g:select name="restaurant.id" from="${Restaurant.list(sort: 'name')}" optionKey="id" optionValue="name" />
        <g:submitButton name="Dodaj zamówienie" />
    </g:form>
</body>
</html>
