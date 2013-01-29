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
    <table>
        <thead>
        <tr>
            <th>Data</th>
            <th>Od</th>
            <th>Do</th>
            <th>Opis</th>
            <th>Kwota</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${transfers}" var="transfer">
            <tr>
                <td><g:formatDate date="${transfer.transferDate}" /></td>
                <td>${transfer.from.username}</td>
                <td>${transfer.to.username}</td>
                <td>${transfer.description}</td>
                <td>${transfer.amount}</td>
            </tr>
        </g:each>
        </tbody>
    </table>
</body>
</html>
