<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <title>LAUNCH TIME :: <g:layoutTitle/></title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'lunchtime.css')}" type="text/css">
    <g:javascript library="jquery" />
    <g:layoutHead/>
    <r:layoutResources />
</head>
    <body>
        <div class="topBar">
            <h1><em>LAUNCH TIME ::</em> <g:layoutTitle /></h1>
            <g:link controller="logout">Wyloguj</g:link>
            <div style="clear: both"></div>
        </div>
        <div class="menu">
            <g:link controller="restaurant">Restauracje</g:link>
            <g:link controller="order">Zamówienia</g:link>
        </div>
        <div class="content">
            <g:layoutBody/>
        </div>
        <r:layoutResources />
    </body>
</html>
