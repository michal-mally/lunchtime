<%@ page import="pl.helenium.lunchtime.OrderState" contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Zamówienie nr ${order.id}</title>
    <g:javascript library="jquery" />
</head>
<body>
    <p><strong>Data zamówienie:</strong> <g:formatDate date="${order.orderDate}" /></p>
    <p><strong>Restauracja:</strong> <g:link controller="restaurant" id="${order.restaurant.id}">${order.restaurant.name}</g:link></p>
    <p><strong>Status:</strong> <g:message code="OrderState.${order.orderState}" /></p>
    <g:if test="${order.orderItems}">
        <table>
            <thead>
            <tr>
                <th>Data złożenia</th>
                <th>Zamawiający</th>
                <th>Danie</th>
                <th>Cena</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
                <g:each in="${order.orderItems}" var="orderItem">
                    <tr>
                        <td><g:formatDate date="${orderItem.submitDate}" /></td>
                        <td><g:link controller="user" action="show" id="${orderItem.user.id}">${orderItem.user.username}</g:link></td>
                        <td>${orderItem.meal}</td>
                        <td>${orderItem.price}</td>
                        <td>
                            <g:if test="${order.orderState == OrderState.NEW}">
                                <g:link class="button" controller="orderItem" action="delete" id="${orderItem.id}">usuń</g:link>
                            </g:if>
                        </td>
                    </tr>
                </g:each>
            <tr style="font-weight: bold;">
                <td colspan="3" style="text-align: right;">Łącznie</td>
                <td>${order.orderTotal}</td>
                <td></td>
            </tr>
            </tbody>
        </table>
    </g:if>
    <g:else>
        <p>Brak pozycji na zamówieniu</p>
    </g:else>
    <g:if test="${order.orderState == OrderState.NEW}">
        <g:link controller="orderItem" action="create" params="['order.id': order.id]" class="button">Dodaj pozycję</g:link>
    </g:if>
    <g:link action="proceed" id="${order.id}" class="button">Przejdź do kolejnego stanu</g:link>
    <g:link action="list" class="button">Wróc do listy</g:link>
</body>
</html>
