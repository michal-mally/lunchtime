<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
  <title>Rozliczenia</title>
</head>
<body>
    <g:if test="${reconciliation}">
        <table>
            <thead>
                <tr>
                    <th>Kto</th>
                    <th>Kwota</th>
                </tr>
            </thead>
            <tbody>
                <g:each in="${reconciliation.entries}" var="entry">
                    <tr>
                        <td>${entry.key}</td>
                        <td>${entry.value}</td>
                    </tr>
                </g:each>
            </tbody>
        </table>
    </g:if>
</body>
</html>
