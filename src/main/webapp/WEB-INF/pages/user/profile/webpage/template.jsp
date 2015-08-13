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
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/cube-portfolio/cubeportfolio/css/cubeportfolio.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/cube-portfolio/cubeportfolio/custom/custom-cubeportfolio.css">

  <!-- CSS Theme -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/theme-skins/dark.css">

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
      <div class="row margin-bottom-20 text-center">
          <h3>Creëer uw GRATIS trouw website!</h3>
          <p>Door het creëeren van uw persoonlijke website kan je jullie liefdesverhaal en event informatie op een makkelijke manier verspreiden naar uw vrienden en familie.
             Daarboven op kan je jouw gasten ook een online R.S.V.P. systeem aanbieden zodat jullie met 1 klik een overzicht kan hebben.</p>
          <h1>Kies uw Design!</h1>
      </div>
      <!--=== Cube-Templates ===-->
      <div class="cube-portfolio margin-bottom-20">
        <div class="content-xs">
          <div id="filters-container" class="cbp-l-filters-text content-xs">
            <span class="filter-text-color">Stijl:</span>
            <div data-filter="*" class="cbp-filter-item-active cbp-filter-item"> Alles </div> |
            <div data-filter=".classic" class="cbp-filter-item"> Klassiek </div> |
            <div data-filter=".modern" class="cbp-filter-item"> Modern </div></br>
            <span class="filter-text-color">Kleur:</span>
            <div data-filter=".white" title="wit" class="cbp-filter-item"><div class="filter-box filter-white"></div></div>
            <div data-filter=".ivory" title="ivoor" class="cbp-filter-item"><div class="filter-box filter-ivory"></div></div>
            <div data-filter=".tan" title="geelbruin" class="cbp-filter-item"><div class="filter-box filter-tan"></div></div>
            <div data-filter=".yellow" title="geel" class="cbp-filter-item"><div class="filter-box filter-yellow"></div></div>
            <div data-filter=".orange" title="oranje" class="cbp-filter-item"><div class="filter-box filter-orange"></div></div>
            <div data-filter=".pink" title="roos" class="cbp-filter-item"><div class="filter-box filter-pink"></div></div>
            <div data-filter=".red" title="rood" class="cbp-filter-item"><div class="filter-box filter-red"></div></div>
            <div data-filter=".purple" title="paars" class="cbp-filter-item"><div class="filter-box filter-purple"></div></div>
            <div data-filter=".blue" title="blauw" class="cbp-filter-item"><div class="filter-box filter-blue"></div></div>
            <div data-filter=".green" title="groen" class="cbp-filter-item"><div class="filter-box filter-green"></div></div>
            <div data-filter=".brown" title="bruin" class="cbp-filter-item"><div class="filter-box filter-brown"></div></div>
            <div data-filter=".gray" title="grijs" class="cbp-filter-item"><div class="filter-box filter-gray"></div></div>
            <div data-filter=".black" title="zwart" class="cbp-filter-item"><div class="filter-box filter-black"></div></div>
            <div data-filter=".silver" title="zilver" class="cbp-filter-item"><div class="filter-box filter-silver"></div></div>
            <div data-filter=".gold" title="goud" class="cbp-filter-item"><div class="filter-box filter-gold"></div></div>
          </div><!--/end Filters Container-->
        </div>

        <div id="grid-container" class="cbp-l-grid-fullWidth">
          <div class="cbp-item classic white">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img26.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/template?template=1"><i class="rounded-x fa fa-link" title="Selecteer"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img26.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item classic ivory">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img2.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/template?template=2"><i class="rounded-x fa fa-link" title="Selecteer"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img2.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item classic tan">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img9.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/template?template=3"><i class="rounded-x fa fa-link" title="Selecteer"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img9.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item modern yellow">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img10.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/template?template=4"><i class="rounded-x fa fa-link" title="Selecteer"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img10.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item modern orange">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img11.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/template?template=5"><i class="rounded-x fa fa-link" title="Selecteer"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img11.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item modern pink">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img12.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/template?template=6"><i class="rounded-x fa fa-link" title="Selecteer"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img12.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item classic red">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img19.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/template?template=7"><i class="rounded-x fa fa-link" title="Selecteer"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img19.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item modern purple">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img7.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/template?template=8"><i class="rounded-x fa fa-link" title="Selecteer"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img7.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item classic blue">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img20.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/template?template=9"><i class="rounded-x fa fa-link" title="Selecteer"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img20.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item modern green">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img3.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/template?template=10"><i class="rounded-x fa fa-link" title="Selecteer"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img3.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item classic brown">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img6.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/template?template=11"><i class="rounded-x fa fa-link" title="Selecteer"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img6.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item classic gray">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img16.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/template?template=12"><i class="rounded-x fa fa-link" title="Selecteer"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img16.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item classic black">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img16.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/template?template=13"><i class="rounded-x fa fa-link" title="Selecteer"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img16.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item classic silver">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img16.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/template?template=14"><i class="rounded-x fa fa-link" title="Selecteer"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img16.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item classic gold">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img16.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/template?template=15"><i class="rounded-x fa fa-link" title="Selecteer"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img16.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div><!--/end Grid Container-->
      </div>
      <!--=== End Cube-Portfdlio ===-->
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
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/cube-portfolio/cubeportfolio/js/jquery.cubeportfolio.min.js"></script>
<!-- JS Customization -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
<!-- JS Page Level -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/app.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugins/cube-portfolio/cube-portfolio-4-fw.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugins/style-switcher.js"></script>
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
