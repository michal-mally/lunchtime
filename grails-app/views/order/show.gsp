<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
</head>
<body>
    <h1>${order.orderDate}</h1>
    <table>
        <thead>
        <tr>
            <th>Zamawiający</th>
            <th>Danie</th>
            <th>Cena</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${order.orderItems}" var="orderItem">
            <tr>
                <td>${orderItem.user}</td>
                <td>${orderItem.meal}</td>
                <td>${orderItem.price}</td>
            </tr>
        </g:each>
        </tbody>
    </table>
    <a href="<g:createLink controller="orderItem" action="create" params="['order.id': order.id]" />">Dodaj zamówienie</a>
</body>
</html>
