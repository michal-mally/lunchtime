<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title></title>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th>Zamawiający</th>
                <th>Danie</th>
                <th>Cena</th>
            </tr>
        </thead>
        <tbody>
            <g:each in="${orderItems}" var="orderItem">
                <tr>
                    <td>${orderItem.user}</td>
                    <td>${orderItem.meal}</td>
                    <td>${orderItem.price}</td>
                </tr>
            </g:each>
        </tbody>
    </table>
    <a href="<g:createLink action="create" />">Dodaj zamówienie</a>
</body>
</html>
