<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: Davy
  Date: 6/3/2015
  Time: 3:05 PM
  To change this template use File | Settings | File Templates.
--%>
<html class="js cssanimations csstransitions">
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
  <head>
    <title>Becoming One - Home</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content>
    <meta name="author" content>
    <!-- Favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/favicon.ico">
    <!-- Web Fonts -->
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin">
    <link href='http://fonts.googleapis.com/css?family=Alex+Brush' rel='stylesheet' type='text/css'>
    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <!-- CSS Header and Footer -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/headers/header-v2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footers/footer-v5.css">
    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/animate.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/parallax-slider/css/parallax-slider.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/fancybox/source/jquery.fancybox.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/owl-carousel/owl-carousel/owl.carousel.css">
    <!-- CSS Customization -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom.css">
    <style type="text/css">.fancybox-margin{margin-right:17px;}</style>
    <!-- CSS Theme -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/theme-colors/default.css"/>
  </head>
  <body>
    <div id="header">
      <div class="header-v2 header-sticky">
        <div class="container container-space">
          <!-- Topbar v2 -->
          <div class="topbar-v2">
            <div class="row">
              <div class="col-sm-8">
                <ul class="list-inline top-v2-contacts">
                  <li>Email: <a href="mailto:info@becomingone.be">info@becomingone.be</a></li>
                  <li>Bel ons: +70 396 4587 99</li>
                  <li>
                    <div class="language-bar">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <span class="heading">Talen</span>
                      </a>
                      <ul class="languages-dropdown" role="menu">
                        <li class="active">
                          <a href="#">Nederlands</a>
                        </li>
                        <li><a href="#">Français</a></li>
                        <li><a href="#">English</a></li>
                        <li><a href="#">German</a></li>
                      </ul>
                    </div>
                  </li>
                </ul>
              </div>
              <sec:authorize access="isAnonymous()">
              <div class="col-sm-4">
                <div class="topbar-buttons pull-right">
                  <a href="/login" class="btn-u btn-brd btn-brd-hover btn-u-light margin-right-5">Aanmelden</a>
                  <a href="/user/register" class="btn-u">Registreer</a>
                </div>
              </div>
              </sec:authorize>
              <sec:authorize access="isAuthenticated()">
                <div class="col-sm-4">
                  <div class="topbar-buttons pull-right">
                    <a href="#">Mijn Trouw</a>
                    <a href="/logout">Afmelden</a>
                  </div>
                </div>
              </sec:authorize>
            </div>
          </div>
          <!-- End Topbar v2 -->
        </div>

        <!-- Navbar -->
        <div class="navbar navbar-default mega-menu" role="navigation">
          <div class="container container-space">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="fa fa-bars"></span>
              </button>
              <a class="navbar-brand brand-style" href="/">
                <img id="logo-header" src="${pageContext.request.contextPath}/resources/img/logo4.png" width="40" height="40" alt="Logo" style="float: left; margin-top: -20px;">
                <span class="becomOneLogo">Becoming One</span>
              </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-responsive-collapse">
              <ul class="nav navbar-nav">
                <!-- Tips & Ideas -->
                <li class="dropdown active">
                  <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                    Tips & Tricks
                  </a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Tip 1</a></li>
                    <li><a href="#">Tip 2</a></li>
                    <li><a href="#">Tip 3</a></li>
                    <li><a href="#">Tip 4</a></li>
                    <li><a href="#">Trick 1</a></li>
                    <li><a href="#">Trick 2</a></li>
                    <li><a href="#">Trick 3</a></li>
                    <li><a href="#">Trick 4</a></li>
                  </ul>
                </li>
                <!-- End Tips & Ideas -->

                <!-- Vendors -->
                <li><a href="#">Handelaars</a></li>
                <!-- End Vendors -->

                <!-- Dresses -->
                <li class="dropdown">
                  <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                    Trouwjurk
                  </a>
                  <ul class="dropdown-menu">
                    <li><a href="#">Trouwjurkgallerij</a></li>
                    <li class="dropdown-submenu">
                      <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                        Merken
                      </a>
                      <ul class="dropdown-menu">
                        <li><a href="#">Merk 1</a></li>
                        <li><a href="#">Merk 2</a></li>
                        <li><a href="#">Merk 3</a></li>
                        <li><a href="#">Merk 4</a></li>
                        <li><a href="#">Merk 5</a></li>
                        <li><a href="#">Merk 6</a></li>
                        <li><a href="#">Merk 7</a></li>
                        <li><a href="#">Merk 8</a></li>
                        <li><a href="#">Merk 9</a></li>
                        <li><a href="#">Merk 10</a></li>
                      </ul>
                    </li>
                    <li><a href="#">Winkels</a></li>
                  </ul>
                </li>
                <!-- End Dresses -->

                <!-- Portfolio -->
                <li class="dropdown">
                  <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                    Planning
                  </a>
                  <ul class="dropdown-menu">
                    <li class="dropdown-submenu">
                      <a href="javascript:void(0);">No Space Boxed</a>
                      <ul class="dropdown-menu">
                        <li><a href="portfolio_2_columns_grid_no_space.html">2 Columns</a></li>
                        <li><a href="portfolio_3_columns_grid_no_space.html">3 Columns</a></li>
                        <li><a href="portfolio_4_columns_grid_no_space.html">4 Columns</a></li>
                      </ul>
                    </li>
                    <li class="dropdown-submenu">
                      <a href="javascript:void(0);">Grid Boxed</a>
                      <ul class="dropdown-menu">
                        <li><a href="portfolio_2_columns_grid.html">2 Columns</a></li>
                        <li><a href="portfolio_3_columns_grid.html">3 Columns</a></li>
                        <li><a href="portfolio_4_columns_grid.html">4 Columns</a></li>
                      </ul>
                    </li>
                    <li class="dropdown-submenu">
                      <a href="javascript:void(0);">Grid Text Boxed</a>
                      <ul class="dropdown-menu">
                        <li><a href="portfolio_2_columns_grid_text.html">2 Columns</a></li>
                        <li><a href="portfolio_3_columns_grid_text.html">3 Columns</a></li>
                        <li><a href="portfolio_4_columns_grid_text.html">4 Columns</a></li>
                      </ul>
                    </li>
                    <li class="dropdown-submenu">
                      <a href="javascript:void(0);">No Space Full Width</a>
                      <ul class="dropdown-menu">
                        <li><a href="portfolio_2_columns_fullwidth_no_space.html">2 Columns</a></li>
                        <li><a href="portfolio_3_columns_fullwidth_no_space.html">3 Columns</a></li>
                        <li><a href="portfolio_4_columns_fullwidth_no_space.html">4 Columns</a></li>
                        <li><a href="portfolio_5_columns_fullwidth_no_space.html">5 Columns</a></li>
                        <li><a href="portfolio_6_columns_fullwidth_no_space.html">6 Columns</a></li>
                      </ul>
                    </li>
                    <li class="dropdown-submenu">
                      <a href="javascript:void(0);">Grid Full Width</a>
                      <ul class="dropdown-menu">
                        <li><a href="portfolio_2_columns_fullwidth.html">2 Columns</a></li>
                        <li><a href="portfolio_3_columns_fullwidth.html">3 Columns</a></li>
                        <li><a href="portfolio_4_columns_fullwidth.html">4 Columns</a></li>
                        <li><a href="portfolio_5_columns_fullwidth.html">5 Columns</a></li>
                        <li><a href="portfolio_6_columns_fullwidth.html">6 Columns</a></li>
                      </ul>
                    </li>
                    <li class="dropdown-submenu">
                      <a href="javascript:void(0);">Grid Text Full Width</a>
                      <ul class="dropdown-menu">
                        <li><a href="portfolio_2_columns_fullwidth_text.html">2 Columns</a></li>
                        <li><a href="portfolio_3_columns_fullwidth_text.html">3 Columns</a></li>
                        <li><a href="portfolio_4_columns_fullwidth_text.html">4 Columns</a></li>
                        <li><a href="portfolio_5_columns_fullwidth_text.html">5 Columns</a></li>
                        <li><a href="portfolio_6_columns_fullwidth_text.html">6 Columns</a></li>
                      </ul>
                    </li>
                    <li><a href="portfolio_hover_colors.html">Portfolio Hover Colors</a></li>
                    <li class="dropdown-submenu">
                      <a href="javascript:void(0);">Portfolio Items</a>
                      <ul class="dropdown-menu">
                        <li><a href="portfolio_single_item.html">Single Item</a></li>
                        <li><a href="portfolio_old_item.html">Basic Item 1</a></li>
                        <li><a href="portfolio_old_item1.html">Basic Item 2</a></li>
                      </ul>
                    </li>
                    <li class="dropdown-submenu">
                      <a href="javascript:void(0);">Portfolio Basic Pages</a>
                      <ul class="dropdown-menu">
                        <li><a href="portfolio_old_text_blocks.html">Basic Grid Text</a></li>
                        <li><a href="portfolio_old_2_column.html">Basic 2 Columns</a></li>
                        <li><a href="portfolio_old_3_column.html">Basic 3 Columns</a></li>
                        <li><a href="portfolio_old_4_column.html">Basic 4 Columns</a></li>
                      </ul>
                    </li>
                  </ul>
                </li>
                <!-- End Portfolio -->

                <!-- Shortcodes -->
                <li class="dropdown mega-menu-fullwidth">
                  <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown">
                    Mijn Becoming 1
                  </a>
                  <ul class="dropdown-menu">
                    <li>
                      <div class="mega-menu-content disable-icons">
                        <div class="container">
                          <div class="row equal-height">
                            <div class="col-md-3 equal-height-in">
                              <ul class="list-unstyled equal-height-list">
                                <li><h3>Typography &amp; Components</h3></li>

                                <!-- Typography -->
                                <li><a href="shortcode_typo_general.html"><i class="fa fa-sort-alpha-asc"></i> General Typography</a></li>
                                <li><a href="shortcode_typo_headings.html"><i class="fa fa-magic"></i> Headings Options</a></li>
                                <li><a href="shortcode_typo_dividers.html"><i class="fa fa-ellipsis-h"></i> Dividers</a></li>
                                <li><a href="shortcode_typo_blockquote.html"><i class="fa fa-quote-left"></i> Blockquote Blocks</a></li>
                                <li><a href="shortcode_typo_boxshadows.html"><i class="fa fa-asterisk"></i> Box Shadows</a></li>
                                <li><a href="shortcode_typo_testimonials.html"><i class="fa fa-comments"></i> Testimonials</a></li>
                                <li><a href="shortcode_typo_tagline_boxes.html"><i class="fa fa-tasks"></i> Tagline Boxes</a></li>
                                <li><a href="shortcode_typo_grid.html"><i class="fa fa-align-justify"></i> Grid Layouts</a></li>
                                <!-- End Typography -->

                                <!-- Components -->
                                <li><a href="shortcode_compo_messages.html"><i class="fa fa-comment"></i> Alerts &amp; Messages</a></li>
                                <li><a href="shortcode_compo_labels.html"><i class="fa fa-tags"></i> Labels &amp; Badges</a></li>
                                <li><a href="shortcode_compo_media.html"><i class="fa fa-volume-down"></i> Audio/Videos &amp; Images</a></li>
                                <li><a href="shortcode_compo_pagination.html"><i class="fa fa-arrows-h"></i> Paginations</a></li>
                                <!-- End Components -->
                              </ul>
                            </div>
                            <div class="col-md-3 equal-height-in">
                              <ul class="list-unstyled equal-height-list">
                                <li><h3>Buttons &amp; Icons</h3></li>

                                <!-- Buttons -->
                                <li><a href="shortcode_btn_general.html"><i class="fa fa-flask"></i> General Buttons</a></li>
                                <li><a href="shortcode_btn_brands.html"><i class="fa fa-html5"></i> Brand &amp; Social Buttons</a></li>
                                <li><a href="shortcode_btn_effects.html"><i class="fa fa-bolt"></i> Loading &amp; Hover Effects</a></li>
                                <!-- End Buttons -->

                                <!-- Icons -->
                                <li><a href="shortcode_icon_general.html"><i class="fa fa-chevron-circle-right"></i> General Icons</a></li>
                                <li><a href="shortcode_icon_fa.html"><i class="fa fa-chevron-circle-right"></i> Font Awesome Icons</a></li>
                                <li><a href="shortcode_icon_line.html"><i class="fa fa-chevron-circle-right"></i> Line Icons</a></li>
                                <li><a href="shortcode_icon_glyph.html"><i class="fa fa-chevron-circle-right"></i> Glyphicons Icons (Bootstrap)</a></li>
                                <li><a href="shortcode_icon_glyph_pro.html"><i class="fa fa-chevron-circle-right"></i> Glyphicons Icons Pro</a></li>
                                <!-- End Icons -->
                              </ul>
                            </div>
                            <div class="col-md-3 equal-height-in">
                              <ul class="list-unstyled equal-height-list">
                                <li><h3>Common elements</h3></li>

                                <!-- Content Boxes -->
                                <li><a href="shortcode_box_general.html"><i class="fa fa-cog"></i> General Content Boxes</a></li>
                                <li><a href="shortcode_box_colored.html"><i class="fa fa-align-center"></i> Colored Boxes</a></li>
                                <li><a href="shortcode_thumbnails.html"><i class="fa fa-image"></i> Thumbnails</a></li>
                                <li><a href="shortcode_accordion_and_tabs.html"><i class="fa fa-list-ol"></i> Accordion &amp; Tabs</a></li>
                                <li><a href="shortcode_timeline1.html"><i class="fa fa-dot-circle-o"></i> Timeline Option 1</a></li>
                                <li><a href="shortcode_timeline2.html"><i class="fa fa-dot-circle-o"></i> Timeline Option 2</a></li>
                                <li><a href="shortcode_table_general.html"><i class="fa fa-table"></i> Tables</a></li>
                                <li><a href="shortcode_compo_progress_bars.html"><i class="fa fa-align-left"></i> Progress Bars</a></li>
                                <li><a href="shortcode_compo_panels.html"><i class="fa fa-columns"></i> Panels</a></li>
                                <!-- End Common Elements -->
                              </ul>
                            </div>
                            <div class="col-md-3 equal-height-in">
                              <ul class="list-unstyled equal-height-list">
                                <li><h3>Forms &amp; Infographics</h3></li>

                                <!-- Forms -->
                                <li><a href="shortcode_form_general.html"><i class="fa fa-bars"></i> Common Bootstrap Forms</a></li>
                                <li><a href="shortcode_form_general1.html"><i class="fa fa-bars"></i> General Unify Forms</a></li>
                                <li><a href="shortcode_form_advanced.html"><i class="fa fa-bars"></i> Advanced Forms</a></li>
                                <li><a href="shortcode_form_layouts.html"><i class="fa fa-bars"></i> Form Layouts</a></li>
                                <li><a href="shortcode_form_layouts_advanced.html"><i class="fa fa-bars"></i> Advanced Layout Forms</a></li>
                                <li><a href="shortcode_form_states.html"><i class="fa fa-bars"></i> Form States</a></li>
                                <li><a href="shortcode_form_sliders.html"><i class="fa fa-bars"></i> Form Sliders</a></li>
                                <li><a href="shortcode_form_modals.html"><i class="fa fa-bars"></i> Modals</a></li>
                                <!-- End Forms -->

                                <!-- Infographics -->
                                <li><a href="shortcode_carousels.html"><i class="fa fa-sliders"></i> Carousel Examples</a></li>
                                <li><a href="shortcode_compo_charts.html"><i class="fa fa-pie-chart"></i> Charts &amp; Countdowns</a></li>
                                <li><a href="shortcode_maps_google.html"><i class="fa fa-map-marker"></i> Google Maps</a></li>
                                <li><a href="shortcode_maps_vector.html"><i class="fa fa-align-center"></i> Vector Maps</a></li>
                                <!-- End Infographics -->
                              </ul>
                            </div>
                          </div>
                        </div>
                      </div>
                    </li>
                  </ul>
                </li>
                <!-- End Shortcodes -->

              </ul>
            </div><!--/navbar-collapse-->
          </div>
        </div>
        <!-- End Navbar -->
      </div>
      <!-- End Header -->
    </div>
    <div id="content" class="moveContentUp">
      <!-- Image Gradient -->
      <div class="interactive-slider-v2">
        <div class="container">
          <div class="margin-bottom-140">
            <h1 style="font-family: 'Alex Brush', cursive;">Welkom bij Becoming One</h1>
            <p>Alle informatie over trouwen op één plaats!</p>
          </div>
          <div id="center-btns-homepage">
            <div class="headline-center headline-light col-md-6">
              <button type="button" class="btn-u btn-brd btn-brd-hover btn-u-light">Registreer</button><br/>
              <p>Ben je al lid? <a href="#">Log je in</a></p>
            </div>
            <div class="headline-center headline-light col-md-6">
              <button type="button" class="btn-u btn-brd btn-brd-hover btn-u-light">Zoek een koppel</button><br/>
              <p>Trouwgast? Klik hier boven!</p>
            </div>
          </div>
        </div>
      </div>
      <!-- End Image Gradient -->
      <!--=== Content ===-->
      <div class="content-md">

        <div class="container margin-bottom-60">
          <div class="headline-center">
            <h2>Handelaars in de schijnwerper</h2>
            <p>Hier heb je een paar van onze geregistreerde handelaars in de schijnwerper! <a href="#">Klik hier</a> om meer handelaars te vinden in jouw buurt.</p>
          </div><!--/end Headline Center-->

          <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class=""></li>
              <li data-target="#myCarousel" data-slide-to="1" class=""></li>
              <li data-target="#myCarousel" data-slide-to="2" class="active"></li>
            </ol>
            <div class="chevrons-carousel">
              <a class="left" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left chevron-carousel" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="right" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right chevron-carousel" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>
            <div class="carousel-inner" role="listbox">
              <div class="item active">
                <!-- Portfolio Box -->
                <ul class="list-unstyled row portfolio-box">
                  <li class="col-sm-4 md-margin-bottom-50">
                    <a title="Handelaar 1" href="#">
                      <img class="full-width img-responsive" src="resources/img/main/img9.jpg" alt="">
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
                      <img class="full-width img-responsive" src="resources/img/main/img22.jpg" alt="">
                        <span class="portfolio-box-in">
                            <i class="rounded-x icon-magnifier-add"></i>
                        </span>
                    </a>
                    <div class="headline-left margin-bottom-10"><h3 class="headline-brd">Handelaar 2</h3></div>
                    <small class="project-tag"><i class="fa fa-tag"></i><a href="#">Patisserie</a>, <a href="#">Genk</a></small>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet </p>
                  </li>
                  <li class="col-sm-4">
                    <a title="Handelaar 3" href="resources/img/main/img18.jpg">
                      <img class="full-width img-responsive" src="resources/img/main/img18.jpg" alt="">
                        <span class="portfolio-box-in">
                            <i class="rounded-x icon-magnifier-add"></i>
                        </span>
                    </a>
                    <div class="headline-left margin-bottom-10"><h3 class="headline-brd">Handelaar 3</h3></div>
                    <small class="project-tag"><i class="fa fa-tag"></i><a href="#">Catering</a>, <a href="#">Leuven</a></small>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet </p>
                  </li>
                </ul>
                <!-- End Portfolio Box -->
              </div>
              <div class="item">
                <!-- Portfolio Box -->
                <ul class="list-unstyled row portfolio-box">
                  <li class="col-sm-4 md-margin-bottom-50">
                    <a title="Handelaar 4" href="#">
                      <img class="full-width img-responsive" src="resources/img/main/img9.jpg" alt="">
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
                      <img class="full-width img-responsive" src="resources/img/main/img22.jpg" alt="">
                        <span class="portfolio-box-in">
                            <i class="rounded-x icon-magnifier-add"></i>
                        </span>
                    </a>
                    <div class="headline-left margin-bottom-10"><h3 class="headline-brd">Handelaar 5</h3></div>
                    <small class="project-tag"><i class="fa fa-tag"></i><a href="#">Patisserie</a>, <a href="#">Genk</a></small>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet </p>
                  </li>
                  <li class="col-sm-4">
                    <a title="Handelaar 6" href="resources/img/main/img18.jpg">
                      <img class="full-width img-responsive" src="resources/img/main/img18.jpg" alt="">
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
                <!-- Portfolio Box -->
                <ul class="list-unstyled row portfolio-box">
                  <li class="col-sm-4 md-margin-bottom-50">
                    <a title="Handelaar 7" href="#">
                      <img class="full-width img-responsive" src="resources/img/main/img9.jpg" alt="">
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
                      <img class="full-width img-responsive" src="resources/img/main/img22.jpg" alt="">
                        <span class="portfolio-box-in">
                            <i class="rounded-x icon-magnifier-add"></i>
                        </span>
                    </a>
                    <div class="headline-left margin-bottom-10"><h3 class="headline-brd">Handelaar 8</h3></div>
                    <small class="project-tag"><i class="fa fa-tag"></i><a href="#">Patisserie</a>, <a href="#">Genk</a></small>
                    <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet </p>
                  </li>
                  <li class="col-sm-4">
                    <a title="Handelaar 9" href="resources/img/main/img18.jpg">
                      <img class="full-width img-responsive" src="resources/img/main/img18.jpg" alt="">
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
        </div><!--/end container-->

        <!-- Parallax Section -->
        <div class="bg-image-v1 parallaxBg margin-bottom-60" style="background-position: 50% 82px;">
          <div class="container">
            <div class="headline-center headline-light">
              <h2>Becoming One hanteert een volledig Responsive Design</h2>
              <p>Dankzij ons Responsive Design ziet jouw website er ook schitterent uit op smartphones en tablets!</p><br>
              <button type="button" class="btn-u btn-brd btn-brd-hover btn-u-light">Creëer nu jouw website!</button>
            </div><!--/end Headline Center-->
          </div>
        </div>
        <!-- End Parallax Section -->

        <div class="container">
          <!-- Service Box -->
          <div class="row text-center margin-bottom-60">
            <div class="col-md-4 md-margin-bottom-50">
              <img class="image-md margin-bottom-20" src="resources/img/icons/flat/01.png" alt="">
              <h1 class="title-v3-md margin-bottom-10">Creëer jullie eigen trouw website</h1>
              <p>Deel jullie foto's en geef uw gasten de kans om alle informatie over jullie trouw te weten te komen in één klik, dit aan de hand van jullie eigen gepersonaliseerde gratis website!</p>
            </div>
            <div class="col-md-4 flat-service md-margin-bottom-50">
              <img class="image-md margin-bottom-20" src="resources/img/icons/flat/04.png" alt="">
              <h2 class="title-v3-md margin-bottom-10">Link met handelaars</h2>
              <p>Ben je op zoek naar catering? Of eerder naar een limousine of paard en kar? Bij Becoming One vind je alle nodige informatie en kan je rechtsreeks contact leggen met handelaars uit jouw buurt.</p>
            </div>
            <div class="col-md-4 flat-service">
              <img class="image-md margin-bottom-20" src="resources/img/icons/flat/03.png" alt="">
              <h2 class="title-v3-md margin-bottom-10">Beheer jullie volledige trouw planning</h2>
              <p>Gebruik onze handige tools & tricks om jullie trouw te plannen! Van checklist tot en met gastenlijst en nog zo veel meer...</p>
            </div>
          </div>
          <!-- End Service Box -->
        </div><!--/container -->

        <!-- Flat Testimonials -->
        <div class="flat-testimonials bg-image-v1 parallaxBg1 margin-bottom-60">
          <div class="container">
            <div class="headline-center headline-light margin-bottom-60">
              <h2>Becoming One succes verhalen</h2>
              <p><a href="#">Klik hier</a> voor nog meer succes verhalen van Becoming One koppeltjes.</p>
            </div><!--/end Headline Center-->

            <div class="row">
              <div class="col-sm-4">
                <div class="flat-testimonials-in md-margin-bottom-50">
                  <img class="rounded-x img-responsive" src="resources/img/team/img1-sm.jpg" alt="">
                  <h3>Anthony Connor</h3>
                  <h3>&</h3>
                  <h3>Angela Danil</h3>
                  <span class="color-green">Aalst</span>
                  <p>Van alles en nog wat.</p>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="flat-testimonials-in md-margin-bottom-50">
                  <img class="rounded-x img-responsive" src="resources/img/team/img2-sm.jpg" alt="">
                  <h3>Angela Danil</h3>
                  <span class="color-green">Web Designer</span>
                  <p>Proin et augue vel nisi rhoncus tincidunt. Cras venenatis, magna id sem ipsum mi interduml</p>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="flat-testimonials-in">
                  <img class="rounded-x img-responsive" src="resources/img/team/img3-sm.jpg" alt="">
                  <h3>Anthony Connor</h3>
                  <span class="color-green">Software Developer</span>
                  <p>Proin et augue vel nisi rhoncus tincidunt. Cras venenatis, magna id sem ipsum mi interduml</p>
                </div>
              </div>
            </div><!--/end row-->
          </div><!--/end container-->
        </div>
        <!-- End Flat Testimonials -->

        <div class="container">
          <div class="headline-center margin-bottom-60">
            <h2>Wat bieden wij aan</h2>
            <p>Integer odio ligula, tincidunt id volutpat et, imperdiet eget mi. Quisque laoreet porttitor turpis sed <a href="#">fermentum</a>. Nullam sodales blandit nisi, tristique tempor nunc hendrerit at. Sed posuere mollis orci</p>
          </div><!--/end Headline Center-->

          <div class="row margin-bottom-40">
            <div class="col-md-4">
              <div class="content-boxes-v5 margin-bottom-30">
                <i class="rounded-x icon-layers"></i>
                <div class="overflow-h">
                  <h3 class="no-top-space">Responsive Layout</h3>
                  <p>Proin et augue vel nisi rhoncus tincidunt. Cras venenatis</p>
                </div>
              </div>
              <div class="content-boxes-v5 md-margin-bottom-30">
                <i class="rounded-x icon-settings"></i>
                <div class="overflow-h">
                  <h3 class="no-top-space">Meer dan 100 Templates</h3>
                  <p>Proin et augue vel nisi rhoncus tincidunt. Cras venenatis</p>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="content-boxes-v5 margin-bottom-30">
                <i class="rounded-x icon-star"></i>
                <div class="overflow-h">
                  <h3 class="no-top-space">Tools</h3>
                  <p>Proin et augue vel nisi rhoncus tincidunt. Cras venenatis</p>
                </div>
              </div>
              <div class="content-boxes-v5 md-margin-bottom-30">
                <i class="rounded-x icon-user "></i>
                <div class="overflow-h">
                  <h3 class="no-top-space">Gebruiksvriendelijkheid</h3>
                  <p>Proin et augue vel nisi rhoncus tincidunt. Cras venenatis</p>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="content-boxes-v5 margin-bottom-30">
                <i class="rounded-x icon-wrench"></i>
                <div class="overflow-h">
                  <h3 class="no-top-space">Personaliseerbare templates</h3>
                  <p>Proin et augue vel nisi rhoncus tincidunt. Cras venenatis</p>
                </div>
              </div>
              <div class="content-boxes-v5 md-margin-bottom-30">
                <i class="rounded-x icon-earphones-alt "></i>
                <div class="overflow-h">
                  <h3 class="no-top-space">Support</h3>
                  <p>Proin et augue vel nisi rhoncus tincidunt. Cras venenatis</p>
                </div>
              </div>
            </div>
          </div><!--/end row-->
        </div><!--/end container-->
      </div>
      <!--=== End Content ===-->
    </div>
    <!-- /content -->
    <div id="footer"><%@include file="footer.jsp"%></div>
    <!-- JS Global Compulsory -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/jquery/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/jquery/jquery-migrate.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/bootstrap/js/bootstrap.min.js"></script>
    <!-- JS Implementing Plugins -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/back-to-top.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/smoothScroll.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/jquery.parallax.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/parallax-slider/js/modernizr.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/parallax-slider/js/jquery.cslider.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
    <!-- JS Customization -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
    <!-- JS Page Level -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/app.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugins/fancy-box.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/plugins/owl-carousel.js"></script>
    <script type="text/javascript">
      jQuery(document).ready(function() {
        App.init();
        App.initParallaxBg();
        FancyBox.initFancybox();
        OwlCarousel.initOwlCarousel();
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
