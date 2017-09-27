<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Studentski servis</title>

    <link rel="stylesheet" href="<c:url value='/resources/vendor/bootstrap/dist/css/bootstrap.min.css' />">
    <link rel="stylesheet" href="<c:url value='/resources/vendor/font-awesome/css/font-awesome.min.css' />">
    <link rel="stylesheet" href="<c:url value='/resources/vendor/nprogress/nprogress.css' />">
    <link rel="stylesheet" href="<c:url value='/resources/vendor/animate.css/animate.min.css' />">
    <link rel="stylesheet" href="<c:url value='/resources/css/custom.min.css' />">
</head>

<body class="login">
<div>
    <a class="hiddenanchor" id="signup"></a>
    <a class="hiddenanchor" id="signin"></a>

    <div class="login_wrapper">
        <div class="animate form login_form">
            <section class="login_content">
                <form action="<c:url value='/login' />" method="post">
                    <h1>Login Forma</h1>
                    <c:if test="${param.error != null}">
                        <p class="label label-danger login-error-custom">Neispravno korisničko ime ili šifra.</p>
                    </c:if>
                    <div>
                        <input class="form-control" name="username" placeholder="username" required/>
                    </div>
                    <div>
                        <input type="password" class="form-control" name="password" placeholder="password" required/>
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                    <div>
                        <button class="btn btn-default submit">Prijavi se</button>
                        <a class="reset_pass" href="#">Zaboravili ste šifru?</a>
                    </div>

                    <div class="clearfix"></div>

                    <div class="separator">
                        <p class="change_link">Novi ste na sajtu?
                            <a href="#signup" class="to_register"> Kreirajte Nalog </a>
                        </p>

                        <div class="clearfix"></div>
                        <br/>

                        <div>
                            <h1><img src="<c:url value='/resources/img/fon1.png' />" alt="..." class="-image" style="width:100%; height:100%"></h1>
                            <h1>Studentski servis</h1>
                            <p>©2017 All Rights Reserved. Privacy and Terms</p>
                        </div>
                    </div>
                </form>
            </section>
        </div>

        <div id="register" class="animate form registration_form">
            <section class="login_content">
                <form action="" method="post">
                    <h1>Kreiraj Nalog</h1>
                    <div>
                        <input class="form-control" name="username" placeholder="username" required=""/>
                    </div>
                    <div>
                        <input type="email" name="email" class="form-control" placeholder="email" required=""/>
                    </div>
                    <div>
                        <input type="password" name="password" class="form-control" placeholder="password" required=""/>
                    </div>
                    <div>
                        <button class="btn btn-default submit">Registuj se</button>
                    </div>

                    <div class="clearfix"></div>

                    <div class="separator">
                        <p class="change_link">Imate nalog?
                            <a href="#signin" class="to_register"> Prijavi se </a>
                        </p>

                        <div class="clearfix"></div>
                        <br/>

                        <div>
                            <h1><img src="<c:url value='/resources/img/fon1.png' />" alt="..." class="-image" style="width:100%; height:100%"></h1>
                            <h1>Studentski servis</h1>
                            <p>©2017 All Rights Reserved. Privacy and Terms</p>
                        </div>
                    </div>
                </form>
            </section>
        </div>
    </div>
</div>
</body>
</html>
