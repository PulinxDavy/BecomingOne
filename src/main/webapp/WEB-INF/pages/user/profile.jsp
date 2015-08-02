<%--
  Created by IntelliJ IDEA.
  User: Davy
  Date: 7/25/2015
  Time: 12:17 PM
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
<div id="header"><%@include file="../header.jsp"%></div>
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
          <li class="list-group-item active">
            <a href="/user/profile"><i class="fa fa-calendar"></i> Mijn Trouw</a>
          </li>
          <li class="list-group-item">
            <a href="/user/profile/website"><i class="fa fa-laptop"></i> Mijn Website</a>
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
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner" role="listbox">
          <div class="item active">
            <img class="first-slide" src="${pageContext.request.contextPath}/resources/img/banners/adds.jpg" alt="First slide">
          </div>
          <div class="item">
            <img class="second-slide" src="${pageContext.request.contextPath}/resources/img/banners/adds.jpg" alt="Second slide">
          </div>
          <div class="item">
            <img class="third-slide" src="${pageContext.request.contextPath}/resources/img/banners/adds.jpg" alt="Third slide">
          </div>
        </div>
      </div>
      <hr>
      <div class="row margin-bottom-20">
        <!-- To Do List -->
        <div class="col-sm-6">
          <div class="panel panel-profile no-bg">
            <div class="panel-heading overflow-h">
              <h2 class="panel-title heading-sm pull-left"><i class="fa fa-tasks"></i>To Do Lijst</h2>
            </div>
            <div id="scrollbar" class="panel-body no-padding mCustomScrollbar" data-mcs-theme="minimal-dark">
              <div class="profile-post color-one">
                <span class="profile-post-numb">01</span>
                <div class="profile-post-in">
                  <h3 class="heading-xs"><a href="#">Creative Blog</a></h3>
                  <p>How to market yourself as a freelance designer</p>
                </div>
              </div>
              <div class="profile-post color-two">
                <span class="profile-post-numb">02</span>
                <div class="profile-post-in">
                  <h3 class="heading-xs"><a href="#">Codrops Collective #117</a></h3>
                  <p>Web Design &amp; Development News</p>
                </div>
              </div>
              <div class="profile-post color-three">
                <span class="profile-post-numb">03</span>
                <div class="profile-post-in">
                  <h3 class="heading-xs"><a href="#">Sketch Toolbox</a></h3>
                  <p>Basic prototype of a package manager for Sketch</p>
                </div>
              </div>
              <div class="profile-post color-four">
                <span class="profile-post-numb">04</span>
                <div class="profile-post-in">
                  <h3 class="heading-xs"><a href="#">Amazing Portfolio</a></h3>
                  <p>Create a free online portfolio lookbook with Readz</p>
                </div>
              </div>
              <div class="profile-post color-five">
                <span class="profile-post-numb">05</span>
                <div class="profile-post-in">
                  <h3 class="heading-xs"><a href="#">Discover New Features</a></h3>
                  <p>More than 100+ amazing add-ons coming soon...</p>
                </div>
              </div>
              <div class="profile-post color-six">
                <span class="profile-post-numb">06</span>
                <div class="profile-post-in">
                  <h3 class="heading-xs"><a href="#">Corporation Plans</a></h3>
                  <p>Discussion of new corporation plans</p>
                </div>
              </div>
              <div class="profile-post color-seven">
                <span class="profile-post-numb">07</span>
                <div class="profile-post-in">
                  <h3 class="heading-xs"><a href="#">Project Updates</a></h3>
                  <p>New features of coming update</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!--End Profile Post-->

        <!--Profile Event-->
        <div class="col-sm-6 md-margin-bottom-20">
          <div class="panel panel-profile no-bg">
            <div class="panel-heading overflow-h">
              <h2 class="panel-title heading-sm pull-left"><i class="fa fa-briefcase"></i>Aankomende Events</h2>
            </div>
            <div id="scrollbar2" class="panel-body no-padding mCustomScrollbar" data-mcs-theme="minimal-dark">
              <div class="profile-event">
                <div class="date-formats">
                  <span>25</span>
                  <small>05, 2014</small>
                </div>
                <div class="overflow-h">
                  <h3 class="heading-xs"><a href="#">GitHub seminars in Japan.</a></h3>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry printing.</p>
                </div>
              </div>
              <div class="profile-event">
                <div class="date-formats">
                  <span>31</span>
                  <small>06, 2014</small>
                </div>
                <div class="overflow-h">
                  <h3 class="heading-xs"><a href="#">Bootstrap Update</a></h3>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry printing.</p>
                </div>
              </div>
              <div class="profile-event">
                <div class="date-formats">
                  <span>07</span>
                  <small>08, 2014</small>
                </div>
                <div class="overflow-h">
                  <h3 class="heading-xs"><a href="#">Apple Conference</a></h3>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry printing.</p>
                </div>
              </div>
              <div class="profile-event">
                <div class="date-formats">
                  <span>22</span>
                  <small>10, 2014</small>
                </div>
                <div class="overflow-h">
                  <h3 class="heading-xs"><a href="#">Backend Meeting</a></h3>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry printing.</p>
                </div>
              </div>
              <div class="profile-event">
                <div class="date-formats">
                  <span>14</span>
                  <small>11, 2014</small>
                </div>
                <div class="overflow-h">
                  <h3 class="heading-xs"><a href="#">Google Conference</a></h3>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry printing.</p>
                </div>
              </div>
              <div class="profile-event">
                <div class="date-formats">
                  <span>05</span>
                  <small>12, 2014</small>
                </div>
                <div class="overflow-h">
                  <h3 class="heading-xs"><a href="#">FontAwesome Update</a></h3>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry printing.</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!--End Profile Event-->
      </div><!--/end row-->
      <div class="row margin-bottom-20">
        <div class="headline-center">
          <h2>Handelaars in de schijnwerper</h2>
          <p>Hier heb je een paar van onze geregistreerde handelaars in de schijnwerper! <a href="#">Klik hier</a> om meer handelaars te vinden in jouw buurt.</p>
        </div><!--/end Headline Center-->

        <div id="myCarousel2" class="carousel slide" data-ride="carousel">
          <!-- Indicators -->
          <ol class="carousel-indicators">
            <li data-target="#myCarousel2" data-slide-to="0" class=""></li>
            <li data-target="#myCarousel2" data-slide-to="1" class=""></li>
            <li data-target="#myCarousel2" data-slide-to="2" class="active"></li>
          </ol>
          <div class="chevrons-carousel">
            <a class="left" href="#myCarousel2" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left chevron-carousel" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="right" href="#myCarousel2" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right chevron-carousel" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
          <div class="carousel-inner" role="listbox">
            <div class="item active">
              <!-- Spotlight Box -->
              <ul class="list-unstyled row portfolio-box">
                <li class="col-sm-4 md-margin-bottom-50">
                  <a title="Handelaar 1" href="#">
                    <img class="full-width img-responsive" src="${pageContext.request.contextPath}/resources/img/main/img9.jpg" alt="">
                        <span class="portfolio-box-in">
                            <i class="rounded-x icon-magnifier-add"></i>
                        </span>
                  </a>
                  <div class="headline-left margin-bottom-10"><h3 class="headline-brd">Handelaar 1</h3></div>
                  <small class="project-tag"><i class="fa fa-tag"></i><a href="#">Catering</a>, <a href="#">Aalst</a></small>
                  <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet </p>
                </li>
                <li class="col-sm-4 md-margin-bottom-50">
                  <a title="Handelaar 2" href="#">
                    <img class="full-width img-responsive" src="${pageContext.request.contextPath}/resources/img/main/img22.jpg" alt="">
                        <span class="portfolio-box-in">
                            <i class="rounded-x icon-magnifier-add"></i>
                        </span>
                  </a>
                  <div class="headline-left margin-bottom-10"><h3 class="headline-brd">Handelaar 2</h3></div>
                  <small class="project-tag"><i class="fa fa-tag"></i><a href="#">Patisserie</a>, <a href="#">Genk</a></small>
                  <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet </p>
                </li>
                <li class="col-sm-4">
                  <a title="Handelaar 3" href="${pageContext.request.contextPath}/resources/img/main/img18.jpg">
                    <img class="full-width img-responsive" src="${pageContext.request.contextPath}/resources/img/main/img18.jpg" alt="">
                        <span class="portfolio-box-in">
                            <i class="rounded-x icon-magnifier-add"></i>
                        </span>
                  </a>
                  <div class="headline-left margin-bottom-10"><h3 class="headline-brd">Handelaar 3</h3></div>
                  <small class="project-tag"><i class="fa fa-tag"></i><a href="#">Catering</a>, <a href="#">Leuven</a></small>
                  <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet </p>
                </li>
              </ul>
              <!-- End Spotlight Box -->
            </div>
            <div class="item">
              <!-- Spotlight Box -->
              <ul class="list-unstyled row portfolio-box">
                <li class="col-sm-4 md-margin-bottom-50">
                  <a title="Handelaar 4" href="#">
                    <img class="full-width img-responsive" src="${pageContext.request.contextPath}/resources/img/main/img9.jpg" alt="">
                        <span class="portfolio-box-in">
                            <i class="rounded-x icon-magnifier-add"></i>
                        </span>
                  </a>
                  <div class="headline-left margin-bottom-10"><h3 class="headline-brd">Handelaar 4</h3></div>
                  <small class="project-tag"><i class="fa fa-tag"></i><a href="#">Catering</a>, <a href="#">Aalst</a></small>
                  <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet </p>
                </li>
                <li class="col-sm-4 md-margin-bottom-50">
                  <a title="Handelaar 5" href="#">
                    <img class="full-width img-responsive" src="${pageContext.request.contextPath}/resources/img/main/img22.jpg" alt="">
                        <span class="portfolio-box-in">
                            <i class="rounded-x icon-magnifier-add"></i>
                        </span>
                  </a>
                  <div class="headline-left margin-bottom-10"><h3 class="headline-brd">Handelaar 5</h3></div>
                  <small class="project-tag"><i class="fa fa-tag"></i><a href="#">Patisserie</a>, <a href="#">Genk</a></small>
                  <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet </p>
                </li>
                <li class="col-sm-4">
                  <a title="Handelaar 6" href="${pageContext.request.contextPath}/resources/img/main/img18.jpg">
                    <img class="full-width img-responsive" src="${pageContext.request.contextPath}/resources/img/main/img18.jpg" alt="">
                        <span class="portfolio-box-in">
                            <i class="rounded-x icon-magnifier-add"></i>
                        </span>
                  </a>
                  <div class="headline-left margin-bottom-10"><h3 class="headline-brd">Handelaar 6</h3></div>
                  <small class="project-tag"><i class="fa fa-tag"></i><a href="#">Catering</a>, <a href="#">Leuven</a></small>
                  <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet </p>
                </li>
              </ul>
            </div>
            <div class="item">
              <!-- Spotlight Box -->
              <ul class="list-unstyled row portfolio-box">
                <li class="col-sm-4 md-margin-bottom-50">
                  <a title="Handelaar 7" href="#">
                    <img class="full-width img-responsive" src="${pageContext.request.contextPath}/resources/img/main/img9.jpg" alt="">
                        <span class="portfolio-box-in">
                            <i class="rounded-x icon-magnifier-add"></i>
                        </span>
                  </a>
                  <div class="headline-left margin-bottom-10"><h3 class="headline-brd">Handelaar 7</h3></div>
                  <small class="project-tag"><i class="fa fa-tag"></i><a href="#">Catering</a>, <a href="#">Aalst</a></small>
                  <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet </p>
                </li>
                <li class="col-sm-4 md-margin-bottom-50">
                  <a title="Handelaar 8" href="#">
                    <img class="full-width img-responsive" src="${pageContext.request.contextPath}/resources/img/main/img22.jpg" alt="">
                        <span class="portfolio-box-in">
                            <i class="rounded-x icon-magnifier-add"></i>
                        </span>
                  </a>
                  <div class="headline-left margin-bottom-10"><h3 class="headline-brd">Handelaar 8</h3></div>
                  <small class="project-tag"><i class="fa fa-tag"></i><a href="#">Patisserie</a>, <a href="#">Genk</a></small>
                  <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet </p>
                </li>
                <li class="col-sm-4">
                  <a title="Handelaar 9" href="${pageContext.request.contextPath}/resources/img/main/img18.jpg">
                    <img class="full-width img-responsive" src="${pageContext.request.contextPath}/resources/img/main/img18.jpg" alt="">
                        <span class="portfolio-box-in">
                            <i class="rounded-x icon-magnifier-add"></i>
                        </span>
                  </a>
                  <div class="headline-left margin-bottom-10"><h3 class="headline-brd">Handelaar 9</h3></div>
                  <small class="project-tag"><i class="fa fa-tag"></i><a href="#">Catering</a>, <a href="#">Leuven</a></small>
                  <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet </p>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div id="footer"><%@include file="../footer.jsp"%></div>
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
