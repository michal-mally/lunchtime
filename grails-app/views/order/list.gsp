<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Lista zamówień</title>
</head>
<body>
    %{--<g:each in="${orders}" var="order">
        <g:link action="show" id="${order.id}"><g:formatDate date="${order.orderDate}" /> / ${order.restaurant.name} / ${order.orderState}</g:link><br />
    </g:each>--}%
    <table>
        <thead>
            <tr>
                <th>Data zamówienia</th>
                <th>Restauracja</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <g:each in="${orders}" var="order">
                <tr>
                    <td><g:link action="show" id="${order.id}"><g:formatDate date="${order.orderDate}" /></g:link></td>
                    <td><g:link controller="restaurant" action="show" id="${order.restaurant.id}">${order.restaurant.name}</g:link></td>
                    <td>${order.orderState}</td>
                </tr>
            </g:each>
        </tbody>
    </table>
    <g:link action="create" class="button">Dodaj zamówienie</g:link>
</body>
</html>
