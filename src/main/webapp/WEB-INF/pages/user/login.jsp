<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html>
<head>
  <title>Login | Becoming One</title>
  <!-- Meta -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <!-- Favicon -->
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico">
  <!-- Web Fonts -->
  <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin">
  <!-- CSS Global Compulsory -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
  <!-- CSS Header and Footer -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/headers/header-default.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footers/footer-v5.css">
  <!-- CSS Implementing Plugins -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/animate.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/line-icons/line-icons.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/font-awesome/css/font-awesome.min.css">
  <!-- CSS Page Style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/pages/page_log_reg_v1.css">
  <!-- CSS Customization -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom.css">
</head>
<body>
<div id="header"><%@include file="../header.jsp"%></div>
<sec:authorize access="isAnonymous()">
  <div class="container content">
    <div class="row">
      <div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
        <form class="reg-page" action="/login/authenticate" method="post" role="form">
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
          <div class="reg-header">
            <h2>Login to your account</h2>
            <ul class="social-icons text-center">
              <li><a class="rounded-x social_facebook" data-original-title="Facebook" href="/auth/facebook"></a></li>
              <li><a class="rounded-x social_twitter" data-original-title="Twitter" href="/auth/twitter"></a></li>
            </ul>
            <c:if test="${param.error eq 'bad_credentials'}">
              <div class="alert alert-danger alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                Login failed!
              </div>
            </c:if>
          </div>
          <div class="input-group margin-bottom-20">
            <span class="input-group-addon">
              <i class="fa fa-user"></i>
            </span>
            <input id="user-email" name="username" type="text" class="form-control" placeholder="Username">
          </div>
          <div class="input-group margin-bottom-20">
            <span class="input-group-addon">
              <i class="fa fa-lock"></i>
            </span>
            <input id="user-password" name="password" type="password" class="form-control" placeholder="Password">
          </div>
          <div class="row">
            <div class="col-md-6 checkbox">
              <label>
                <input type="checkbox">
                Stay signed in
              </label>
            </div>
            <div class="col-md-6">
              <button class="btn-u pull-right" type="submit">Login</button>
            </div>
          </div>
          <hr>
          <h4>Not a member yet?</h4>
          <a class="color-green" href="/user/register">Join now!</a>
          <h4>Forgot your Password?</h4>
          <p>
            no worries,
            <a class="color-green" href="#">click here</a>
             to reset your password.
          </p>
        </form>
      </div>
    </div>
  </div>
</sec:authorize>
<sec:authorize access="isAuthenticated()">
  <p>You cannot login because you are already logged in.</p>
</sec:authorize>
<div id="footer"><%@include file="../footer.jsp"%></div>
<!-- JS Global Compulsory -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/back-to-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/smoothScroll.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/app.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/forms/login.js"></script>
<script type="text/javascript">
  jQuery(document).ready(function() {
    App.init();
  });
</script>
<!--[if lt IE 9]>
<script src="${pageContext.request.contextPath}/resources/plugins/respond.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/html5shiv.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->
<div id="topcontrol" title="Scroll Back to Top" style="position: fixed; bottom: 5px; right: 5px; opacity: 0; cursor: pointer;"></div>
</body>
</html>