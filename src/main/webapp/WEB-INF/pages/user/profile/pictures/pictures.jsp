<%--
  Created by IntelliJ IDEA.
  User: Davy
  Date: 8/13/2015
  Time: 1:50 PM
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

  <!-- CSS Page Style -->
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
      <div class="row margin-bottom-20 text-center">
        <h3>Mijn Afbeeldingen!</h3>
        <p>Hier kan je uw afbeelding toevoegen, bekijken en verwijderen. Hou er rekening mee dat zodra je hier een afbeelding verwijdert deze ook verwijdert zal worden op uw webpagina</p>
      </div>
      <!--=== Cube-Templates ===-->
      <div class="cube-portfolio margin-bottom-20">
        <div class="content-xs">
          <button class="btn-u" data-toggle="modal" data-target=".modal-upload-picture">Afbeelding Toevoegen</button>
        </div>

        <div id="grid-container" class="cbp-l-grid-fullWidth">
          <div class="cbp-item">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img26.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/pictures/delete?pic=1"><i class="rounded-x fa fa-trash" title="Verwijder"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img26.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img2.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/pictures/delete?pic=2"><i class="rounded-x fa fa-trash" title="Verwijder"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img2.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img9.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/pictures/delete?pic=3"><i class="rounded-x fa fa-trash" title="Verwijder"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img9.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img10.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/pictures/delete?pic=4"><i class="rounded-x fa fa-trash" title="Verwijder"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img10.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img11.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/pictures/delete?pic=5"><i class="rounded-x fa fa-trash" title="Verwijder"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img11.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img12.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/pictures/delete?pic=6"><i class="rounded-x fa fa-trash" title="Verwijder"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img12.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img19.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/pictures/delete?pic=7"><i class="rounded-x fa fa-trash" title="Verwijder"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img19.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img7.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/pictures/delete?pic=8"><i class="rounded-x fa fa-trash" title="Verwijder"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img7.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img20.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/pictures/delete?pic=9"><i class="rounded-x fa fa-trash" title="Verwijder"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img20.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img3.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/pictures/delete?pic=10"><i class="rounded-x fa fa-trash" title="Verwijder"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img3.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img6.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/pictures/delete?pic=11"><i class="rounded-x fa fa-trash" title="Verwijder"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img6.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img16.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/pictures/delete?pic=12"><i class="rounded-x fa fa-trash" title="Verwijder"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img16.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img16.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/pictures/delete?pic=13"><i class="rounded-x fa fa-trash" title="Verwijder"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img16.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img16.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/pictures/delete?pic=14"><i class="rounded-x fa fa-trash" title="Verwijder"></i></a></li>
                      <li><a href="${pageContext.request.contextPath}/resources/img/main/img16.jpg" class="cbp-lightbox" data-title="Design Object"><i class="rounded-x fa fa-search" title="Voorbeeld"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="cbp-item">
            <div class="cbp-caption">
              <div class="cbp-caption-defaultWrap">
                <img src="${pageContext.request.contextPath}/resources/img/main/img16.jpg" alt="">
              </div>
              <div class="cbp-caption-activeWrap">
                <div class="cbp-l-caption-alignCenter">
                  <div class="cbp-l-caption-body">
                    <ul class="link-captions">
                      <li><a href="/user/profile/pictures/delete?pic=15"><i class="rounded-x fa fa-trash" title="Verwijder"></i></a></li>
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
<div class="modal fade modal-upload-picture" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button aria-hidden="true" data-dismiss="modal" class="close" type="button">×</button>
        <h4 class="modal-title">Afbeelding Toevoegen</h4>
      </div>
      <div class="modal-body">
        <div id="upload"><%@include file="../../../upload-image.jsp"%></div>
      </div>
    </div>
  </div>
</div>
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
