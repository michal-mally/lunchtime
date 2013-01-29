<%@ page import="pl.helenium.lunchtime.Restaurant" contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
</head>
<body>
    <g:renderErrors bean="${order}" />
    <g:form action="save">
        <fieldset>
            <div><label for="restaurant">Restauracja</label><g:select name="restaurant.id" from="${Restaurant.list(sort: 'name')}" optionKey="id" optionValue="name" /></div>
            <a href="#" class="button" onclick="$(this).closest('form').submit(); return false;">Dodaj zamówienie</a>
        </fieldset>
    </g:form>
</body>
</html>
