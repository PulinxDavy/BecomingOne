<%--
  Created by IntelliJ IDEA.
  User: Davy
  Date: 8/2/2015
  Time: 12:54 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html>
<!--<![endif]-->
<head>
  <title>Mijn Trouw | Becoming One</title>

  <!-- Meta -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">

  <!-- Favicon -->
  <link rel="shortcut icon" href="${pageContext.request.contextPath}favicon.ico">

  <!-- Web Fonts -->
  <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin">
  <link href='http://fonts.googleapis.com/css?family=Alex+Brush' rel='stylesheet' type='text/css'>

  <!-- CSS Global Compulsory -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

  <!-- CSS Header and Footer -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/headers/header-default.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footers/footer-v5.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/nav/sidenav.css">

  <!-- CSS Implementing Plugins -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/animate.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/line-icons/line-icons.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/scrollbar/css/jquery.mCustomScrollbar.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/sky-forms-pro/skyforms/css/sky-forms.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/sky-forms-pro/skyforms/custom/custom-sky-forms.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/scrollbar/css/jquery.mCustomScrollbar.css">

  <!-- CSS Page Style -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/pages/profile.css">

  <!-- CSS Customization -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom.css">
</head>
<body>
<div id="header"><%@include file="../../header.jsp"%></div>
<div class="container content profile">
  <div class="row">
    <div class="col-md-3 md-margin-bottom-40">
      <div class="tag-box tag-box-v4 margin-bottom-20 text-center">
        <a href="#"><img class="img-responsive profile-img margin-bottom-20" src="${pageContext.request.contextPath}/resources/img/team/img9-md.jpg" alt=""></a>
        <h2 class="fancy"><a href="#">${profile.bridesFirstName} <img src="${pageContext.request.contextPath}/resources/img/logo4.png" width="20" height="20" alt="Logo"> ${profile.groomsFirstName}</a></h2>
        <p>${weddingDate}</p>
        <p>${profile.location}</p>
        <hr class="faded-line">
        <h3> Nog ${countdown} dagen te gaan!</h3>
      </div>
      <div class="sidenav sidenav-left">
        <a href="#sidebar-nav-1" data-toggle="collapse">
              <span class="input-group-addon">
              <i class="fa fa-chevron-down"></i>
            </span>
        </a>
        <ul class="list-group sidebar-nav-v1 margin-bottom-40" id="sidebar-nav-1">
          <li class="list-group-item">
            <a href="#"><i class="fa fa-calendar"></i> Mijn Trouw</a>
          </li>
          <li class="list-group-item active">
            <a href="#"><i class="fa fa-laptop"></i> Mijn Website</a>
          </li>
          <li class="list-group-item">
            <a href="#"><i class="fa fa-tasks"></i> Mijn Checklist</a>
          </li>
          <li class="list-group-item">
            <a href="#"><i class="fa fa-group"></i> Mijn Gastenlijst</a>
          </li>
          <li class="list-group-item">
            <a href="#"><i class="fa fa-tags"></i> Mijn Trouwlijst</a>
          </li>
          <li class="list-group-item">
            <a href="#"><i class="fa fa-money"></i> Mijn Budget</a>
          </li>
          <li class="list-group-item">
            <a href="#"><i class="fa fa-heart"></i> Mijn Favorieten</a>
          </li>
          <li class="list-group-item">
            <a href="#"><i class="fa fa-cogs"></i> Mijn Settings</a>
          </li>
        </ul>
      </div>
    </div>
    <div class="col-md-9">
      <div class="row margin-bottom-20">
        <div class="jumbotron">
          <h2>Creëer uw GRATIS trouw website!</h2>
          <p>Deel de website met uw familie en vrienden.</p>
          <p>Door het creëeren van uw persoonlijke website kan je jullie liefdesverhaal en event informatie op een makkelijke manier verspreiden naar uw vrienden en familie.
             Daarboven op kan je jouw gasten ook een online R.S.V.P. systeem aanbieden zodat jullie met 1 klik een overzicht kan hebben.</p>
          <h1>Kies uw Design!</h1>
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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/app.js"></script>
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
