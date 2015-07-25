<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
      <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <form:form cssClass="reg-page" action="/user/register" commandName="user" method="post" enctype="utf8" role="form">
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
          <c:if test="${user.signInProvider != null}">
            <form:hidden path="signInProvider"/>
          </c:if>
          <div class="reg-header">
            <h2>Register a new account</h2>
            <p>
              Already Signed Up? Click
              <a href="/login" class="color-green">Sign In</a>
              to login your account.
            </p>
          </div>
          <div class="input-group margin-bottom-20">
            <label for="user-firstName">First Name </label>
            <form:input id="user-firstName" path="firstName" cssClass="form-control margin-bottom-20"/>
            <form:errors id="error-firstName" path="firstName" cssClass="color-red"/>
          </div>
          <div class="input-group margin-bottom-20">
            <label for="user-lastName">Last Name </label>
            <form:input id="user-lastName" path="lastName" cssClass="form-control margin-bottom-20"/>
            <form:errors id="error-lastName" path="lastName" cssClass="color-red"/>
          </div>
          <div class="input-group margin-bottom-20">
            <label for="user-email">Email Address&nbsp;<span class="color-red">*&nbsp;</span></label>
            <form:input id="user-email" path="email" cssClass="form-control margin-bottom-20"/>
            <form:errors id="error-email" path="email" cssClass="color-red"/>
          </div>
          <c:if test="${user.signInProvider == null}">
            <div class="row">
              <div class="col-sm-6">
                <label for="user-password">Password&nbsp;<span class="color-red">*&nbsp;</span></label>
                <form:password id="user-password" path="password" cssClass="form-control margin-bottom-20"/>
                <form:errors id="error-password" path="password" cssClass="color-red"/>
              </div>
              <div class="col-sm-6">
                <label for="user-passwordVerification">Confirm Password&nbsp;<span class="color-red">*&nbsp;</span></label>
                <form:password id="user-passwordVerification" path="passwordVerification" cssClass="form-control margin-bottom-20"/>
                <form:errors id="error-passwordVerification" path="passwordVerification" cssClass="color-red"/>
              </div>
            </div>
          </c:if>
          <hr>
          <div  class="row">
            <p>
              Door op Registreren te klikken, ga je akkoord met onze <a href="#" class="color-green">Voorwaarden</a> en bevestig je dat je ons
              <a href="#" class="color-green">Gegevensbeleid</a> gelezen hebt, inclusief ons <a href="#" class="color-green">Gebruik van cookies</a>.
            </p>
            <div>
              <button class="btn-u" type="submit">Register</button>
            </div>
          </div>
        </form:form>
      </div>
    </div>
  </div>
</sec:authorize>
<sec:authorize access="isAuthenticated()">
  <div class="container content">
    <div class="reg-page">
      <p>You are currently logged in, if this is not your account please <a href="/logout" class="color-green">log out</a> and create a new one.</p>
    </div>
  </div>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/forms/reg.js"></script>
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