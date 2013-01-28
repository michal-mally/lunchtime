<%@ page import="pl.helenium.lunchtime.OrderState" contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
    <g:javascript library="jquery" />
    <r:layoutResources />
</head>
<body>
    <h1>Zamówienie nr ${order.id}</h1>
    <p><strong>Data stworzenie zamówienie:</strong> <g:formatDate date="${order.orderDate}" /></p>
    <p><strong>Restauracja:</strong> ${order.restaurant.name}</p>
    <p><strong>Status:</strong> ${order.orderState}</p>
    <table>
        <thead>
        <tr>
            <th>Data złożenia</th>
            <th>Zamawiający</th>
            <th>Danie</th>
            <th>Cena</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${order.orderItems}" var="orderItem">
            <tr>
                <td><g:formatDate date="${orderItem.submitDate}" /></td>
                <td><g:link controller="user" action="show" id="${orderItem.user.id}">${orderItem.user.username}</g:link></td>
                <td>${orderItem.meal}</td>
                <td>${orderItem.price}</td>
            </tr>
        </g:each>
        <tr style="font-weight: bold;">
            <td colspan="3" style="text-align: right;">Łącznie</td>
            <td>${order.orderTotal}</td>
        </tr>
        </tbody>
    </table>
    <g:if test="${order.orderState == OrderState.NEW}">
        <g:link controller="orderItem" action="create" params="['order.id': order.id]">Dodaj pozycję</g:link><br />
    </g:if>
    <g:link action="proceed" id="${order.id}">Przejdź do kolejnego stanu</g:link><br />
    <g:link action="list">Wróc do listy</g:link>
<r:layoutResources />
</body>
</html>
