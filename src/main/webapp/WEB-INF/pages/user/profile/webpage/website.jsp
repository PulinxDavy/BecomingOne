<%--
  Created by IntelliJ IDEA.
  User: Davy
  Date: 8/2/2015
  Time: 12:48 PM
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

  <!-- CSS Theme -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/theme-skins/dark.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/pages/page_log_reg_v1.css">

  <!-- CSS Customization -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom.css">
</head>
<body>
<div id="header"><%@include file="../../../header.jsp"%></div>
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
      <div id="sidenav"><%@include file="../../../sidenav-left.html"%></div>
    </div>
    <div class="col-md-9">
      <!-- Tab -->
      <div class="tab-v1">
        <ul class="nav nav-tabs">
          <li><a href="/user/profile/design">Kies Design</a></li>
          <li class="active"><a href="#webPages" data-toggle="tab">Beheer Webpagina</a></li>
          <li><a href="#password" data-toggle="tab">Beveilig met een Wachtwoord</a></li>
          <li><a href="#preview">Weergave van website</a></li>
        </ul>
        <div class="tab-content">
          <div class="tab-pane fade in active" id="webPages">
            <div class="margin-bottom-40">
              <h4>Beheer Webpagina</h4>
              <p>
                Verander je webpagina naar hartelust!<br>
                Hieronder vindt u de verschillende mogelijke delen die u kan aanpassen of zelfs onzichtbaar maken.
              </p>
            </div>
            <!-- Begin Accordion -->
            <div class="panel-group acc-v1" id="accordion-1">
              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-One">
                      Welkom
                      <span class="fa fa-cog pull-right"></span>
                    </a>
                  </h4>
                </div>
                <div id="collapse-One" class="panel-collapse collapse">
                  <div class="panel-body">
                    <div class="row">
                      <button class="btn-u" data-toggle="modal" data-target=".modal-select-picture">Select Picture</button>
                      <form class="reg-page" action="/webpage/welcome" method="post" role="form">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                      </form>
                    </div>
                  </div>
                </div>
              </div>

              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-Two">
                      Bruiloft Evenementen
                      <span class="fa fa-cog pull-right"></span>
                    </a>
                  </h4>
                </div>
                <div id="collapse-Two" class="panel-collapse collapse">
                  <div class="panel-body">
                    <div class="row">
                      <form:form cssClass="reg-page" action="/webpage/welcome" commandName="welcome" method="post" enctype="utf8" role="form">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                      </form:form>
                    </div>
                  </div>
                </div>
              </div>

              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-Three">
                      Over Ons
                      <span class="fa fa-cog pull-right"></span>
                    </a>
                  </h4>
                </div>
                <div id="collapse-Three" class="panel-collapse collapse">
                  <div class="panel-body">
                    <div class="row">
                      <form:form cssClass="reg-page" action="/webpage/welcome" commandName="welcome" method="post" enctype="utf8" role="form">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                      </form:form>
                    </div>
                  </div>
                </div>
              </div>

              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-Four">
                      Trouwlijst
                      <span class="fa fa-cog pull-right"></span>
                    </a>
                  </h4>
                </div>
                <div id="collapse-Four" class="panel-collapse collapse">
                  <div class="panel-body">
                    <div class="row">
                      <form:form cssClass="reg-page" action="/webpage/welcome" commandName="welcome" method="post" enctype="utf8" role="form">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                      </form:form>
                    </div>
                  </div>
                </div>
              </div>

              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-Five">
                      Accomodaties
                      <span class="fa fa-cog pull-right"></span>
                    </a>
                  </h4>
                </div>
                <div id="collapse-Five" class="panel-collapse collapse">
                  <div class="panel-body">
                    <div class="row">
                      <form:form cssClass="reg-page" action="/webpage/welcome" commandName="welcome" method="post" enctype="utf8" role="form">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                      </form:form>
                    </div>
                  </div>
                </div>
              </div>

              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-Six">
                      Foto Album
                      <span class="fa fa-cog pull-right"></span>
                    </a>
                  </h4>
                </div>
                <div id="collapse-Six" class="panel-collapse collapse">
                  <div class="panel-body">
                    <div class="row">
                      <form:form cssClass="reg-page" action="/webpage/welcome" commandName="welcome" method="post" enctype="utf8" role="form">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                      </form:form>
                    </div>
                  </div>
                </div>
              </div>

              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-Seven">
                      Contacteer Ons
                      <span class="fa fa-cog pull-right"></span>
                    </a>
                  </h4>
                </div>
                <div id="collapse-Seven" class="panel-collapse collapse">
                  <div class="panel-body">
                    <div class="row">
                      <form:form cssClass="reg-page" action="/webpage/welcome" commandName="welcome" method="post" enctype="utf8" role="form">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                      </form:form>
                    </div>
                  </div>
                </div>
              </div>

              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-Eight">
                      Gastenboek
                      <span class="fa fa-cog pull-right"></span>
                    </a>
                  </h4>
                </div>
                <div id="collapse-Eight" class="panel-collapse collapse">
                  <div class="panel-body">
                    <div class="row">
                      <form:form cssClass="reg-page" action="/webpage/welcome" commandName="welcome" method="post" enctype="utf8" role="form">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                      </form:form>
                    </div>
                  </div>
                </div>
              </div>

              <div class="panel panel-default">
                <div class="panel-heading">
                  <h4 class="panel-title">
                    <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion-1" href="#collapse-Nine">
                      R.S.V.P.
                      <span class="fa fa-cog pull-right"></span>
                    </a>
                  </h4>
                </div>
                <div id="collapse-Nine" class="panel-collapse collapse">
                  <div class="panel-body">
                    <div class="row">
                      <form:form cssClass="reg-page" action="/webpage/welcome" commandName="welcome" method="post" enctype="utf8" role="form">
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                      </form:form>
                    </div>
                  </div>
                </div>
              </div>

            </div>
            <!-- End Accordion -->
          </div>
          <div class="tab-pane fade in" id="password">
            <h4>Heading Sample 3</h4>
            <p><img alt="" class="pull-right rgt-img-margin img-width-200" src="assets/img/main/img18.jpg"> <strong>Vivamus imperdiet condimentum diam, eget placerat felis consectetur id.</strong> Donec eget orci metus, Vivamus imperdiet condimentum diam, eget placerat felis consectetur id. Donec eget orci metus, ac adipiscing nunc. Pellentesque fermentum, ante ac interdum ullamcorper. Donec eget orci metus, ac adipiscing nunc. Pellentesque fermentum, consectetur id. Donec eget orci metus, ac adipiscing nunc. <strong>Pellentesque fermentum</strong>, ante ac interdum ullamcorper. Donec eget orci metus, ac adipiscing nunc. Pellentesque fermentum, ante ac interdum ullamcorper.</p>
          </div>
        </div>
      </div>
      <!-- End Tab -->
    </div>
  </div>
</div>
<div class="modal fade modal-select-picture" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
        <h4 class="modal-title">Select Picture</h4>
      </div>
      <div class="modal-body">
        <form method="post" enctype="multipart/form-data" action="/upload">
          <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
          <input type="file" name="file" id="upload-image" style="display:none"/>
          <div class="col-lg-6 col-sm-6 input-group">
            <h4>Kies uw afbeelding</h4>
            <div class="input-group">
      <span class="input-group-btn">
        <span class="btn btn-u btn-file">
          Browse&hellip; <input type="file" name="file" multiple>
        </span>
      </span>
              <input type="text" class="form-control" readonly>
            </div>
          </div>
          <div class="col-lg-6 col-sm-6 input-group margin-bottom-20">
            <h4>Naam </h4>
            <input type="text" name="name" id="upload-name" class="form-control"/>
          </div>
          <div class="col-lg-6 col-sm-6 input-group margin-bottom-20">
            <button type="submit" class="btn-u">Toevoegen</button>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<div id="footer"><%@include file="../../../footer.jsp"%></div>
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
