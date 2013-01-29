<html>
<head>
	<title>Logowanie</title>
</head>
<body>
    <g:if test="${flash.message}">
        <div class="error">${flash.message}</div>
    </g:if>
    <form action='${postUrl}' method='POST' class="login" id='loginForm' autocomplete='off'>
        <fieldset>
            <div>
                <label for='username'>login</label>
                <input type='text'  name='j_username' id='username'/>
            </div>
            <div>
                <label for='password'>hasło</label>
                <input type='password' name='j_password' id='password'/>
            </div>
            <div id="remember_me_holder">
                <label for='remember_me'>pamiętaj mnie</label>
                <input type='checkbox' name='${rememberMeParameter}' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
            </div>
            <a href="#" class="button" onclick="$(this).closest('form').submit(); return false;">${message(code: "springSecurity.login.button")}</a>
        </fieldset>
    </form>
</body>
</html>
