<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
</head>
<body>
    <g:each in="${orders}" var="order">
        <g:link action="show" id="${order.id}">${order.orderDate} / ${order.restaurant}</g:link><br />
    </g:each>
    <g:link action="create">Dodaj zamówienie</g:link>
</body>
</html>
