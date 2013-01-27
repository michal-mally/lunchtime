<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
</head>
<body>
    <g:each in="${orders}" var="order">
        <a href="<g:createLink action="show" id="${order.id}" />">${order.orderDate}</a><br />
    </g:each>
</body>
</html>
