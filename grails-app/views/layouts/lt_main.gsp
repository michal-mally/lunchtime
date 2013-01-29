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
            <sec:ifLoggedIn>
                <g:link controller="logout" class="button">Wyloguj</g:link>
            </sec:ifLoggedIn>
            <div style="clear: both"></div>
        </div>
        <sec:ifLoggedIn>
            <div class="menu">
                    <g:link controller="restaurant" class="button">Restauracje</g:link>
                    <g:link controller="order" class="button">Zamówienia</g:link>
                    <g:link controller="reconciliation" class="button">Rozliczenia</g:link>
            </div>
        </sec:ifLoggedIn>
        <div class="content">
            <div class="info">
                <g:layoutBody/>
            </div>
        </div>
        <r:layoutResources />
    </body>
</html>
