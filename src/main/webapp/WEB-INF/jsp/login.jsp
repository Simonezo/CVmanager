<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Sign in</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <style>

        body {
            background: url('http://www.wallpaperno.com/thumbnails/detail/20130225/books%201920x1080%20wallpaper_www.wallpaperno.com_96.jpg') no-repeat center center fixed;
            -webkit-background-size: cover;
            -moz-background-size: cover;
            -o-background-size: cover;
            background-size: cover;
        }

        .panel-default {
            opacity: 0.9;
            margin-top:30px;
        }
        .form-group.last {
            margin-bottom:0px;
        }
    </style>

</head>
<body onload='document.loginForm.username.focus();'>

<c:if test="${not empty success}" >
    <div> ${success}</div>
</c:if>
<c:if test="${not empty error}">
    ${error}
</c:if>


<div class="container">
    <div class="row">
        <div class="col-md-4 col-md-offset-7">
            <div class="panel panel-default">

                <c:if test="${not empty logout}">
                    <div class="panel-heading"> <strong class="">LogOut</strong></div>
                    <div class="panel-body">
                        <div class="col-sm-offset-3 col-sm-9"><strong>${logout}</strong></div>
                        <br>
                        <div class="col-sm-offset-3 col-sm-9">You will be redirected!</div>
                    </div>
                    <div class="panel-footer">Come back soon!</div>

                    <%--redirect after 5sec--%>
                    <script>
                        var timer = setTimeout(function() {
                            window.location='/cvmanager/index'
                        }, 5000);
                    </script>


                </c:if>
                <%--nieje to logout screen--%>
                <c:if test="${empty logout}">
                <div class="panel-heading"> <strong class="">Login</strong>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal" role="form" name='loginForm' action="<spring:url value='j_spring_security_check' />" method='POST'>
                        <div class="form-group">
                            <label for="inputUsername" class="col-sm-3 control-label">Username</label>
                            <div class="col-sm-9">
                                <input type='text' name='username' value='' class="form-control" id="inputUsername" placeholder="username" required="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-3 control-label">Password</label>
                            <div class="col-sm-9">
                                <input type='password' name='password' class="form-control" id="inputPassword3" placeholder="Password" required="">
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-9">
                                <div class="checkbox">
                                    <label class="">
                                        <input type="checkbox" class="">Remember me</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group last">
                            <div class="col-sm-offset-3 col-sm-9">
                                <button type="submit" class="btn btn-success btn-sm">Sign in</button>
                            </div>
                        </div>
                        <input type="hidden" name="${_csrf.parameterName}"
                               value="${_csrf.token}" />
                    </form>
                </div>
                <div class="panel-footer">Not Registered? <a href="${pageContext.request.contextPath}/register" class="">Register here</a>
                </div>
                </c:if>
            </div>
        </div>
    </div>
</div>

</body>
</html>