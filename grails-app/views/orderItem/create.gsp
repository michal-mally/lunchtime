<%@ page import="pl.helenium.lunchtime.Restaurant; pl.helenium.lunchtime.User" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
</head>
<body>
    <g:renderErrors bean="${orderItem}" />
    <g:form action="save">
        <fieldset>
            <g:hiddenField name="order.id" value="${orderItem.order.id}" />
            <div>
                <label for="user">Zamawiający</label>
                <g:select name="user.id" from="${User.list()}" optionKey="id" optionValue="username" />
            </div>
            <div>
                <label for="meal">Danie</label>
                <g:textField name="meal" value="${orderItem.meal}" /><br />
            </div>
            <div>
                <label for="price">Cena</label>
                <g:textField name="price" value="${orderItem.price}" /><br />
            </div>
            <a href="#" onclick="$(this).closest('form').submit(); return false;">Dodaj pozycję</a>
        </fieldset>
    </g:form>
</body>
</html>
