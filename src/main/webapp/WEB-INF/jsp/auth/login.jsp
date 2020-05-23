<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="../common/head.jsp"></jsp:include>
        <link href="${pageContext.request.contextPath}/assets/css/login.css" rel="stylesheet"/>
        <title>Faça Login</title>
    </head>
        <body class="text-center">
                <form action="auth" method="post" class="form-signin">
                    <br/>
                    <img class="mb-4" src="assets/icons/entrar.svg" alt="" width="100" height="100">
                    <label for="userName" class="sr-only">Login</label>
                    <input type="text" id="userName" name="credentials.userName" class="form-control" placeholder="Ex: Israel"/> 
                    <br/>
                    <label for="password" class="sr-only">Password</label>
                    <input type="password" id="password" name="credentials.password"class="form-control" placeholder="Password">
                    <br/>
                    <button class="btn btn-lg btn-primary btn-block" type="submit" style="background:#563D7C; border: none;">Entrar</button>
                    <p style='color:red;'>
                        ${loginErrorMsg}
                    </p>
             </form>
    </body>
</html>
