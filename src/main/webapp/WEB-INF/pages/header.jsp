<%--
  Created by IntelliJ IDEA.
  User: Davy
  Date: 6/3/2015
  Time: 4:46 PM
  To change this template use File | Settings | File Templates.
--%>
<div class="header">
  <div class="container">
    <!-- Logo -->
    <a class="logo" href="/">
      <img src="${pageContext.request.contextPath}/resources/img/logo5.png" alt="Logo" height="60">
    </a>
    <!-- End Logo -->

    <!-- Topbar -->
    <div class="topbar">
      <ul class="loginbar pull-right">
        <li class="hoverSelector">
          <i class="fa fa-globe"></i>
          <a>Languages</a>
          <ul class="languages hoverSelectorBlock">
            <li class="active">
              <a href="#">Nederlands <i class="fa fa-check"></i></a>
            </li>
            <li><a href="#">Français</a></li>
            <li><a href="#">English</a></li>
            <li><a href="#">Deutsch</a></li>
          </ul>
        </li>
        <li class="topbar-devider"></li>
        <li><a href="page_faq.html">Help</a></li>
        <li class="topbar-devider"></li>
        <sec:authorize access="isAnonymous()">
          <li><a href="/login">Aanmelden</a></li>
        </sec:authorize>
        <sec:authorize access="isAuthenticated()">
          <li><a href="/logout">Afmelden</a></li>
        </sec:authorize>
      </ul>
    </div>
    <!-- End Topbar -->

    <!-- Toggle get grouped for better mobile display -->
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
      <span class="sr-only">Toggle navigation</span>
      <span class="fa fa-bars"></span>
    </button>
    <!-- End Toggle -->
  </div><!--/end container-->

  <!-- Collect the nav links, forms, and other content for toggling -->
  <div class="collapse navbar-collapse mega-menu navbar-responsive-collapse">
    <div class="container">
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
    </div><!--/end container-->
  </div><!--/navbar-collapse-->
</div>
