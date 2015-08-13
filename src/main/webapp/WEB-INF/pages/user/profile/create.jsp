<%--
  Created by IntelliJ IDEA.
  User: Davy
  Date: 7/27/2015
  Time: 11:33 AM
  To change this template use File | Settings | File Templates.
--%>
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
<!--<![endif]-->
<head>
  <title>Registreer | Becoming One</title>

  <!-- Meta -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

  <!-- Favicon -->
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico">

  <!-- Web Fonts -->
  <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin">
  <link href='http://fonts.googleapis.com/css?family=Alex+Brush' rel='stylesheet' type='text/css'>

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
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/jquery-ui/jquery-ui.min.css">
  <!--[if lt IE 9]><link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/sky-forms-pro/skyforms/css/sky-forms-ie8.css"><![endif]-->

  <!-- CSS Page Style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/pages/page_log_reg_v1.css">

  <!-- CSS Customization -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom.css">
</head>
<body>
<div id="header"><%@include file="../../header.jsp"%></div>
  <div class="container content">
    <div class="row">
      <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="tab-v2">
          <ul class="nav nav-tabs centered-tabs">
            <li class="active"><a href="#hetero" data-toggle="tab" aria-expanded="false"><span class="fa fa-venus-mars"></span></a></li>
            <li><a href="#homo" data-toggle="tab" aria-expanded="false"><span class="fa fa-mars-double"></span></a> </li>
            <li><a href="#lesbian" data-toggle="tab" aria-expanded="false"><span class="fa fa-venus-double"></span></a> </li>
          </ul>
          <div class="tab-content">
            <div class="tab-pane fade active in" id="hetero">
              <form:form cssClass="sky-form" id="sky-form" action="/user/profile/create" commandName="profile" method="post" enctype="utf8" role="form">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <form:hidden path="sexualityType" value="HETERO"/>
                <header>Begin met het plannen van uw droom trouw</header>
                <fieldset>
                  <div class="row">
                    <section class="col-sm-6">
                      <label class="label" for="profile_bridesFirstName">Voornaam Bruid </label>
                      <form:input id="profile_bridesFirstName" path="bridesFirstName" cssClass="form-control margin-bottom-20"/>
                      <form:errors id="error-bridesFirstName" path="bridesFirstName" cssClass="color-red"/>
                    </section>
                    <section class="col-sm-6">
                      <label class="label" for="profile-bridesLastName">Achternaam Bruid </label>
                      <form:input id="profile-bridesLastName" path="bridesLastName" cssClass="form-control margin-bottom-20"/>
                      <form:errors id="error-bridesLastName" path="bridesLastName" cssClass="color-red"/>
                    </section>
                  </div>
                  <div class="row">
                    <section class="col-sm-6">
                      <label class="label" for="profile_groomsFirstName">Voornaam Bruidegom </label>
                      <form:input id="profile_groomsFirstName" path="groomsFirstName" cssClass="form-control margin-bottom-20"/>
                      <form:errors id="error-groomsFirstName" path="groomsFirstName" cssClass="color-red"/>
                    </section>
                    <section class="col-sm-6">
                      <label class="label" for="profile-groomsLastName">Achternaam Bruidegom </label>
                      <form:input id="profile-groomsLastName" path="groomsLastName" cssClass="form-control margin-bottom-20"/>
                      <form:errors id="error-groomsLastName" path="groomsLastName" cssClass="color-red"/>
                    </section>
                  </div>
                  <div class="row">
                    <section class="col-sm-6">
                      <label class="label" for="date">Huwelijksdatum </label>
                      <div class='input-group date' id='datetimepicker1'>
                        <form:input path="date" cssClass="form-control"/>
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                      </div>
                      <form:errors id="error-date" path="date" cssClass="color-red"/>
                    </section>
                    <section class="col-sm-6">
                      <label class="label" for="profile-weddingsLocation">Huwelijksplaats </label>
                      <form:input id="profile-weddingsLocation" path="location" cssClass="form-control margin-bottom-20 date-picker"/>
                      <form:errors id="error-weddingsLocation" path="location" cssClass="color-red"/>
                    </section>
                  </div>
                </fieldset>
                <hr>
                <footer>
                  <button class="btn-u" type="submit">Register</button>
                </footer>
              </form:form>
            </div>
            <div class="tab-pane fade" id="homo">
              <form:form cssClass="sky-form" id="sky-form" action="/user/create_profile" commandName="profile" method="post" enctype="utf8" role="form">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <form:hidden path="sexualityType" value="HOMO"/>
                <header>Begin met het plannen van uw droom trouw</header>
                <fieldset>
                  <div class="row">
                    <section class="col-sm-6">
                      <label class="label" for="profile_bridesFirstName">Voornaam Bruidegom </label>
                      <form:input id="profile_bridesFirstName" path="bridesFirstName" cssClass="form-control margin-bottom-20"/>
                      <form:errors id="error-bridesFirstName" path="bridesFirstName" cssClass="color-red"/>
                    </section>
                    <section class="col-sm-6">
                      <label class="label" for="profile-bridesLastName">Achternaam Bruidegom </label>
                      <form:input id="profile-bridesLastName" path="bridesLastName" cssClass="form-control margin-bottom-20"/>
                      <form:errors id="error-bridesLastName" path="bridesLastName" cssClass="color-red"/>
                    </section>
                  </div>
                  <div class="row">
                    <section class="col-sm-6">
                      <label class="label" for="profile_groomsFirstName">Voornaam Bruidegom </label>
                      <form:input id="profile_groomsFirstName" path="groomsFirstName" cssClass="form-control margin-bottom-20"/>
                      <form:errors id="error-groomsFirstName" path="groomsFirstName" cssClass="color-red"/>
                    </section>
                    <section class="col-sm-6">
                      <label class="label" for="profile-groomsLastName">Achternaam Bruidegom </label>
                      <form:input id="profile-groomsLastName" path="groomsLastName" cssClass="form-control margin-bottom-20"/>
                      <form:errors id="error-groomsLastName" path="groomsLastName" cssClass="color-red"/>
                    </section>
                  </div>
                  <div class="row">
                    <section class="col-sm-6">
                      <label class="label" for="date">Huwelijksdatum </label>
                      <div class='input-group date' id='datetimepicker1'>
                        <form:input path="date" cssClass="form-control"/>
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                      </div>
                      <form:errors id="error-date" path="date" cssClass="color-red"/>
                    </section>
                    <section class="col-sm-6">
                      <label class="label" for="profile-weddingsLocation">Huwelijksplaats </label>
                      <form:input id="profile-weddingsLocation" path="location" cssClass="form-control margin-bottom-20 date-picker"/>
                      <form:errors id="error-weddingsLocation" path="location" cssClass="color-red"/>
                    </section>
                  </div>
                </fieldset>
                <hr>
                <footer>
                  <button class="btn-u" type="submit">Register</button>
                </footer>
              </form:form>
            </div>
            <div class="tab-pane fade" id="lesbian">
              <form:form cssClass="sky-form" id="sky-form" action="/user/profile/create" commandName="profile" method="post" enctype="utf8" role="form">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <form:hidden path="sexualityType" value="LESBIAN"/>
                <header>Begin met het plannen van uw droom trouw</header>
                <fieldset>
                  <div class="row">
                    <section class="col-sm-6">
                      <label class="label" for="profile_bridesFirstName">Voornaam Bruid </label>
                      <form:input id="profile_bridesFirstName" path="bridesFirstName" cssClass="form-control margin-bottom-20"/>
                      <form:errors id="error-bridesFirstName" path="bridesFirstName" cssClass="color-red"/>
                    </section>
                    <section class="col-sm-6">
                      <label class="label" for="profile-bridesLastName">Achternaam Bruid </label>
                      <form:input id="profile-bridesLastName" path="bridesLastName" cssClass="form-control margin-bottom-20"/>
                      <form:errors id="error-bridesLastName" path="bridesLastName" cssClass="color-red"/>
                    </section>
                  </div>
                  <div class="row">
                    <section class="col-sm-6">
                      <label class="label" for="profile_groomsFirstName">Voornaam Bruid </label>
                      <form:input id="profile_groomsFirstName" path="groomsFirstName" cssClass="form-control margin-bottom-20"/>
                      <form:errors id="error-groomsFirstName" path="groomsFirstName" cssClass="color-red"/>
                    </section>
                    <section class="col-sm-6">
                      <label class="label" for="profile-groomsLastName">Achternaam Bruid </label>
                      <form:input id="profile-groomsLastName" path="groomsLastName" cssClass="form-control margin-bottom-20"/>
                      <form:errors id="error-groomsLastName" path="groomsLastName" cssClass="color-red"/>
                    </section>
                  </div>
                  <div class="row">
                    <section class="col-sm-6">
                      <label class="label" for="date">Huwelijksdatum </label>
                      <div class='input-group date' id='datetimepicker1'>
                        <form:input path="date" cssClass="form-control"/>
                    <span class="input-group-addon">
                        <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                      </div>
                      <form:errors id="error-date" path="date" cssClass="color-red"/>
                    </section>
                    <section class="col-sm-6">
                      <label class="label" for="profile-weddingsLocation">Huwelijksplaats </label>
                      <form:input id="profile-weddingsLocation" path="location" cssClass="form-control margin-bottom-20 date-picker"/>
                      <form:errors id="error-weddingsLocation" path="location" cssClass="color-red"/>
                    </section>
                  </div>
                </fieldset>
                <hr>
                <footer>
                  <button class="btn-u" type="submit">Register</button>
                </footer>
              </form:form>
            </div>
          </div>
        </div>

      </div>
    </div>
  </div>
<div id="footer"><%@include file="../../footer.jsp"%></div>
<!-- JS Global Compulsory -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/jquery/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/jquery/jquery-migrate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/back-to-top.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/smoothScroll.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/sky-forms-pro/skyforms/js/jquery.maskedinput.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/sky-forms-pro/skyforms/js/jquery-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/jquery-ui/jquery-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugins/moments.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugins/bootstrap-datetimepicker.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/app.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/forms/reg.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugins/masking.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugins/datepicker.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugins/validation.js"></script>
<script type="text/javascript">
  jQuery(document).ready(function() {
    App.init();
    Masking.initMasking();
    Datepicker.initDatepicker();
    Validation.initValidation();
  });
</script>
<!--[if lt IE 9]>
<script src="${pageContext.request.contextPath}/resources/plugins/respond.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/html5shiv.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/placeholder-IE-fixes.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/sky-forms-pro/skyforms/js/sky-forms-ie8.js"></script>
<![endif]-->
<!--[if lt IE 10]>
<script src="${pageContext.request.contextPath}/resources/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>
<![endif]-->
</body>
</html>
