<!DOCTYPE html>

<!--
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.1.1
Version: 2.0.2
Author: KeenThemes
Website: http://www.keenthemes.com/
Contact: support@keenthemes.com
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
License: You must have a valid license purchased only from themeforest(the above link) in order to legally use the theme for your project.
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
    <meta charset="utf-8"/>
    <title>Metronic | UI Components - Form Tools</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="" name="description"/>
    <meta content="" name="author"/>
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all" rel="stylesheet" type="text/css"/>
    <link href="assets/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="assets/plugins/uniform/css/uniform.default.css" rel="stylesheet" type="text/css"/>
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link rel="stylesheet" type="text/css" href="assets/plugins/bootstrap-fileinput/bootstrap-fileinput.css"/>
    <link rel="stylesheet" type="text/css" href="assets/plugins/bootstrap-switch/css/bootstrap-switch.min.css"/>
    <link rel="stylesheet" type="text/css" href="assets/plugins/jquery-tags-input/jquery.tagsinput.css"/>
    <link rel="stylesheet" type="text/css" href="assets/plugins/bootstrap-markdown/css/bootstrap-markdown.min.css">
    <link rel="stylesheet" type="text/css" href="assets/plugins/typeahead/typeahead.css">
    <!-- END PAGE LEVEL STYLES -->
    <!-- BEGIN THEME STYLES -->
    <link href="assets/css/style-metronic.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/style.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/style-responsive.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/plugins.css" rel="stylesheet" type="text/css"/>
    <link href="assets/css/themes/default.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="assets/css/custom.css" rel="stylesheet" type="text/css"/>
    <!-- END THEME STYLES -->
    <link rel="shortcut icon" href="favicon.ico"/>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed">
<!-- BEGIN HEADER -->
<div class="header navbar navbar-fixed-top">
<!-- BEGIN TOP NAVIGATION BAR -->
<div class="header-inner">
<!-- BEGIN LOGO -->
<a class="navbar-brand" href="index.html">
    <img src="assets/img/logo.png" alt="logo" class="img-responsive"/>
</a>
<!-- END LOGO -->
<!-- BEGIN RESPONSIVE MENU TOGGLER -->
<a href="javascript:;" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
    <img src="assets/img/menu-toggler.png" alt=""/>
</a>
<!-- END RESPONSIVE MENU TOGGLER -->
<!-- BEGIN TOP NAVIGATION MENU -->
<ul class="nav navbar-nav pull-right">
<!-- BEGIN NOTIFICATION DROPDOWN -->
<li class="dropdown" id="header_notification_bar">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
        <i class="fa fa-warning"></i>
					<span class="badge">
						 6
					</span>
    </a>
    <ul class="dropdown-menu extended notification">
        <li>
            <p>
                You have 14 new notifications
            </p>
        </li>
        <li>
            <ul class="dropdown-menu-list scroller" style="height: 250px;">
                <li>
                    <a href="#">
									<span class="label label-icon label-success">
										<i class="fa fa-plus"></i>
									</span>
                        New user registered.
									<span class="time">
										 Just now
									</span>
                    </a>
                </li>
                <li>
                    <a href="#">
									<span class="label label-icon label-danger">
										<i class="fa fa-bolt"></i>
									</span>
                        Server #12 overloaded.
									<span class="time">
										 15 mins
									</span>
                    </a>
                </li>
                <li>
                    <a href="#">
									<span class="label label-icon label-warning">
										<i class="fa fa-bell-o"></i>
									</span>
                        Server #2 not responding.
									<span class="time">
										 22 mins
									</span>
                    </a>
                </li>
                <li>
                    <a href="#">
									<span class="label label-icon label-info">
										<i class="fa fa-bullhorn"></i>
									</span>
                        Application error.
									<span class="time">
										 40 mins
									</span>
                    </a>
                </li>
                <li>
                    <a href="#">
									<span class="label label-icon label-danger">
										<i class="fa fa-bolt"></i>
									</span>
                        Database overloaded 68%.
									<span class="time">
										 2 hrs
									</span>
                    </a>
                </li>
                <li>
                    <a href="#">
									<span class="label label-icon label-danger">
										<i class="fa fa-bolt"></i>
									</span>
                        2 user IP blocked.
									<span class="time">
										 5 hrs
									</span>
                    </a>
                </li>
                <li>
                    <a href="#">
									<span class="label label-icon label-warning">
										<i class="fa fa-bell-o"></i>
									</span>
                        Storage Server #4 not responding.
									<span class="time">
										 45 mins
									</span>
                    </a>
                </li>
                <li>
                    <a href="#">
									<span class="label label-icon label-info">
										<i class="fa fa-bullhorn"></i>
									</span>
                        System Error.
									<span class="time">
										 55 mins
									</span>
                    </a>
                </li>
                <li>
                    <a href="#">
									<span class="label label-icon label-danger">
										<i class="fa fa-bolt"></i>
									</span>
                        Database overloaded 68%.
									<span class="time">
										 2 hrs
									</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="external">
            <a href="#">
                See all notifications <i class="m-icon-swapright"></i>
            </a>
        </li>
    </ul>
</li>
<!-- END NOTIFICATION DROPDOWN -->
<!-- BEGIN INBOX DROPDOWN -->
<li class="dropdown" id="header_inbox_bar">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
        <i class="fa fa-envelope"></i>
					<span class="badge">
						 5
					</span>
    </a>
    <ul class="dropdown-menu extended inbox">
        <li>
            <p>
                You have 12 new messages
            </p>
        </li>
        <li>
            <ul class="dropdown-menu-list scroller" style="height: 250px;">
                <li>
                    <a href="inbox.html?a=view">
									<span class="photo">
										<img src="./assets/img/avatar2.jpg" alt=""/>
									</span>
									<span class="subject">
										<span class="from">
											 Lisa Wong
										</span>
										<span class="time">
											 Just Now
										</span>
									</span>
									<span class="message">
										 Vivamus sed auctor nibh congue nibh. auctor nibh auctor nibh...
									</span>
                    </a>
                </li>
                <li>
                    <a href="inbox.html?a=view">
									<span class="photo">
										<img src="./assets/img/avatar3.jpg" alt=""/>
									</span>
									<span class="subject">
										<span class="from">
											 Richard Doe
										</span>
										<span class="time">
											 16 mins
										</span>
									</span>
									<span class="message">
										 Vivamus sed congue nibh auctor nibh congue nibh. auctor nibh auctor nibh...
									</span>
                    </a>
                </li>
                <li>
                    <a href="inbox.html?a=view">
									<span class="photo">
										<img src="./assets/img/avatar1.jpg" alt=""/>
									</span>
									<span class="subject">
										<span class="from">
											 Bob Nilson
										</span>
										<span class="time">
											 2 hrs
										</span>
									</span>
									<span class="message">
										 Vivamus sed nibh auctor nibh congue nibh. auctor nibh auctor nibh...
									</span>
                    </a>
                </li>
                <li>
                    <a href="inbox.html?a=view">
									<span class="photo">
										<img src="./assets/img/avatar2.jpg" alt=""/>
									</span>
									<span class="subject">
										<span class="from">
											 Lisa Wong
										</span>
										<span class="time">
											 40 mins
										</span>
									</span>
									<span class="message">
										 Vivamus sed auctor 40% nibh congue nibh...
									</span>
                    </a>
                </li>
                <li>
                    <a href="inbox.html?a=view">
									<span class="photo">
										<img src="./assets/img/avatar3.jpg" alt=""/>
									</span>
									<span class="subject">
										<span class="from">
											 Richard Doe
										</span>
										<span class="time">
											 46 mins
										</span>
									</span>
									<span class="message">
										 Vivamus sed congue nibh auctor nibh congue nibh. auctor nibh auctor nibh...
									</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="external">
            <a href="inbox.html">
                See all messages <i class="m-icon-swapright"></i>
            </a>
        </li>
    </ul>
</li>
<!-- END INBOX DROPDOWN -->
<!-- BEGIN TODO DROPDOWN -->
<li class="dropdown" id="header_task_bar">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
        <i class="fa fa-tasks"></i>
					<span class="badge">
						 5
					</span>
    </a>
    <ul class="dropdown-menu extended tasks">
        <li>
            <p>
                You have 12 pending tasks
            </p>
        </li>
        <li>
            <ul class="dropdown-menu-list scroller" style="height: 250px;">
                <li>
                    <a href="#">
									<span class="task">
										<span class="desc">
											 New release v1.2
										</span>
										<span class="percent">
											 30%
										</span>
									</span>
									<span class="progress">
										<span style="width: 40%;" class="progress-bar progress-bar-success" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100">
											<span class="sr-only">
												 40% Complete
											</span>
										</span>
									</span>
                    </a>
                </li>
                <li>
                    <a href="#">
									<span class="task">
										<span class="desc">
											 Application deployment
										</span>
										<span class="percent">
											 65%
										</span>
									</span>
									<span class="progress progress-striped">
										<span style="width: 65%;" class="progress-bar progress-bar-danger" aria-valuenow="65" aria-valuemin="0" aria-valuemax="100">
											<span class="sr-only">
												 65% Complete
											</span>
										</span>
									</span>
                    </a>
                </li>
                <li>
                    <a href="#">
									<span class="task">
										<span class="desc">
											 Mobile app release
										</span>
										<span class="percent">
											 98%
										</span>
									</span>
									<span class="progress">
										<span style="width: 98%;" class="progress-bar progress-bar-success" aria-valuenow="98" aria-valuemin="0" aria-valuemax="100">
											<span class="sr-only">
												 98% Complete
											</span>
										</span>
									</span>
                    </a>
                </li>
                <li>
                    <a href="#">
									<span class="task">
										<span class="desc">
											 Database migration
										</span>
										<span class="percent">
											 10%
										</span>
									</span>
									<span class="progress progress-striped">
										<span style="width: 10%;" class="progress-bar progress-bar-warning" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100">
											<span class="sr-only">
												 10% Complete
											</span>
										</span>
									</span>
                    </a>
                </li>
                <li>
                    <a href="#">
									<span class="task">
										<span class="desc">
											 Web server upgrade
										</span>
										<span class="percent">
											 58%
										</span>
									</span>
									<span class="progress progress-striped">
										<span style="width: 58%;" class="progress-bar progress-bar-info" aria-valuenow="58" aria-valuemin="0" aria-valuemax="100">
											<span class="sr-only">
												 58% Complete
											</span>
										</span>
									</span>
                    </a>
                </li>
                <li>
                    <a href="#">
									<span class="task">
										<span class="desc">
											 Mobile development
										</span>
										<span class="percent">
											 85%
										</span>
									</span>
									<span class="progress progress-striped">
										<span style="width: 85%;" class="progress-bar progress-bar-success" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100">
											<span class="sr-only">
												 85% Complete
											</span>
										</span>
									</span>
                    </a>
                </li>
                <li>
                    <a href="#">
									<span class="task">
										<span class="desc">
											 New UI release
										</span>
										<span class="percent">
											 18%
										</span>
									</span>
									<span class="progress progress-striped">
										<span style="width: 18%;" class="progress-bar progress-bar-important" aria-valuenow="18" aria-valuemin="0" aria-valuemax="100">
											<span class="sr-only">
												 18% Complete
											</span>
										</span>
									</span>
                    </a>
                </li>
            </ul>
        </li>
        <li class="external">
            <a href="#">
                See all tasks <i class="m-icon-swapright"></i>
            </a>
        </li>
    </ul>
</li>
<!-- END TODO DROPDOWN -->
<!-- BEGIN USER LOGIN DROPDOWN -->
<li class="dropdown user">
    <a href="#" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
        <img alt="" src="assets/img/avatar1_small.jpg"/>
					<span class="username">
						 Bob Nilson
					</span>
        <i class="fa fa-angle-down"></i>
    </a>
    <ul class="dropdown-menu">
        <li>
            <a href="extra_profile.html">
                <i class="fa fa-user"></i> My Profile
            </a>
        </li>
        <li>
            <a href="page_calendar.html">
                <i class="fa fa-calendar"></i> My Calendar
            </a>
        </li>
        <li>
            <a href="inbox.html">
                <i class="fa fa-envelope"></i> My Inbox
							<span class="badge badge-danger">
								 3
							</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="fa fa-tasks"></i> My Tasks
							<span class="badge badge-success">
								 7
							</span>
            </a>
        </li>
        <li class="divider">
        </li>
        <li>
            <a href="javascript:;" id="trigger_fullscreen">
                <i class="fa fa-arrows"></i> Full Screen
            </a>
        </li>
        <li>
            <a href="extra_lock.html">
                <i class="fa fa-lock"></i> Lock Screen
            </a>
        </li>
        <li>
            <a href="login.html">
                <i class="fa fa-key"></i> Log Out
            </a>
        </li>
    </ul>
</li>
<!-- END USER LOGIN DROPDOWN -->
</ul>
<!-- END TOP NAVIGATION MENU -->
</div>
<!-- END TOP NAVIGATION BAR -->
</div>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
<!-- BEGIN SIDEBAR -->
<div class="page-sidebar-wrapper">
<div class="page-sidebar navbar-collapse collapse">
<!-- BEGIN SIDEBAR MENU -->
<ul class="page-sidebar-menu" data-auto-scroll="true" data-slide-speed="200">
<li class="sidebar-toggler-wrapper">
    <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
    <div class="sidebar-toggler hidden-phone">
    </div>
    <!-- BEGIN SIDEBAR TOGGLER BUTTON -->
</li>
<li class="sidebar-search-wrapper">
    <!-- BEGIN RESPONSIVE QUICK SEARCH FORM -->
    <form class="sidebar-search" action="extra_search.html" method="POST">
        <div class="form-container">
            <div class="input-box">
                <a href="javascript:;" class="remove">
                </a>
                <input type="text" placeholder="Search..."/>
                <input type="button" class="submit" value=" "/>
            </div>
        </div>
    </form>
    <!-- END RESPONSIVE QUICK SEARCH FORM -->
</li>
<li class="start ">
    <a href="index.html">
        <i class="fa fa-home"></i>
						<span class="title">
							Dashboard
						</span>
    </a>
</li>
<li>
    <a href="javascript:;">
        <i class="fa fa-shopping-cart"></i>
						<span class="title">
							E-Commerce
						</span>
						<span class="arrow ">
						</span>
    </a>
    <ul class="sub-menu">
        <li>
            <a href="ecommerce_index.html">
                <i class="fa fa-bullhorn"></i>
                Dashboard
            </a>
        </li>
        <li>
            <a href="ecommerce_orders.html">
                <i class="fa fa-shopping-cart"></i>
                Orders
            </a>
        </li>
        <li>
            <a href="ecommerce_orders_view.html">
                <i class="fa fa-tags"></i>
                Order View
            </a>
        </li>
        <li>
            <a href="ecommerce_products.html">
                <i class="fa fa-sitemap"></i>
                Products
            </a>
        </li>
        <li>
            <a href="ecommerce_products_edit.html">
                <i class="fa fa-file-o"></i>
                Product Edit
            </a>
        </li>
    </ul>
</li>
<li>
    <a href="javascript:;">
        <i class="fa fa-gift"></i>
						<span class="title">
							Frontend Themes
						</span>
						<span class="arrow">
						</span>
    </a>
    <ul class="sub-menu">
        <li class="tooltips" data-container="body" data-placement="right" data-html="true" data-original-title="Complete E-Commerce Frontend Theme For Metronic Admin">
            <a href="http://keenthemes.com/preview/index.php?theme=metronic_ecommerce" target="_blank">
								<span class="title">
									E-Commerce Frontend
								</span>
            </a>
        </li>
        <li class="tooltips" data-container="body" data-placement="right" data-html="true" data-original-title="Complete Multipurpose Corporate Frontend Theme For Metronic Admin">
            <a href="http://keenthemes.com/preview/index.php?theme=metronic_frontend" target="_blank">
								<span class="title">
									Corporate Frontend
								</span>
            </a>
        </li>
    </ul>
</li>
<li>
    <a href="javascript:;">
        <i class="fa fa-cogs"></i>
						<span class="title">
							Page Layouts
						</span>
						<span class="arrow ">
						</span>
    </a>
    <ul class="sub-menu">
        <li>
            <a href="index_horizontal_menu.html">
                Dashboard & Mega Menu
            </a>
        </li>
        <li>
            <a href="layout_horizontal_sidebar_menu.html">
                Horizontal & Sidebar Menu
            </a>
        </li>
        <li>
            <a href="layout_horizontal_menu1.html">
                Horizontal Mega Menu 1
            </a>
        </li>
        <li>
            <a href="layout_horizontal_menu2.html">
                Horizontal Mega Menu 2
            </a>
        </li>
        <li>
            <a href="layout_search_on_header.html">
                Searchbar On Header
            </a>
        </li>
        <li>
            <a href="layout_sidebar_toggler_on_header.html">
                Sidebar Toggler On Header
            </a>
        </li>
        <li>
            <a href="layout_sidebar_reversed.html">
								<span class="badge badge-roundless badge-success">
									new
								</span>
                Right Sidebar Page
            </a>
        </li>
        <li>
            <a href="layout_sidebar_fixed.html">
                Sidebar Fixed Page
            </a>
        </li>
        <li>
            <a href="layout_sidebar_closed.html">
                Sidebar Closed Page
            </a>
        </li>
        <li>
            <a href="layout_ajax.html">
                Content Loading via Ajax
            </a>
        </li>
        <li>
            <a href="layout_disabled_menu.html">
                Disabled Menu Links
            </a>
        </li>
        <li>
            <a href="layout_blank_page.html">
                Blank Page
            </a>
        </li>
        <li>
            <a href="layout_boxed_page.html">
                Boxed Page
            </a>
        </li>
        <li>
            <a href="layout_language_bar.html">
                Language Switch Bar
            </a>
        </li>
        <li>
            <a href="layout_promo.html">
                Promo Page
            </a>
        </li>
    </ul>
</li>
<li>
    <a href="javascript:;">
        <i class="fa fa-bookmark-o"></i>
						<span class="title">
							UI Features
						</span>
						<span class="arrow ">
						</span>
    </a>
    <ul class="sub-menu">
        <li>
            <a href="ui_general.html">
                General
            </a>
        </li>
        <li>
            <a href="ui_buttons.html">
                Buttons & Icons
            </a>
        </li>
        <li>
            <a href="ui_typography.html">
                Typography
            </a>
        </li>
        <li>
            <a href="ui_tabs_accordions_navs.html">
                Tabs, Accordions & Navs
            </a>
        </li>
        <li>
            <a href="ui_tree.html">
								<span class="badge badge-roundless badge-important">
									new
								</span>
                Tree View
            </a>
        </li>
        <li>
            <a href="ui_page_progress_style_1.html">
								<span class="badge badge-roundless badge-warning">
									new
								</span>
                Page Progress Bar
            </a>
        </li>
        <li>
            <a href="ui_blockui.html">
                Block UI
            </a>
        </li>
        <li>
            <a href="ui_notific8.html">
                Notific8 Notifications
            </a>
        </li>
        <li>
            <a href="ui_toastr.html">
                Toastr Notifications
            </a>
        </li>
        <li>
            <a href="ui_alert_dialog_api.html">
								<span class="badge badge-roundless badge-important">
									new
								</span>
                Alerts & Dialogs API
            </a>
        </li>
        <li>
            <a href="ui_session_timeout.html">
                Session Timeout
            </a>
        </li>
        <li>
            <a href="ui_idle_timeout.html">
                User Idle Timeout
            </a>
        </li>
        <li>
            <a href="ui_modals.html">
                Modals
            </a>
        </li>
        <li>
            <a href="ui_extended_modals.html">
                Extended Modals
            </a>
        </li>
        <li>
            <a href="ui_tiles.html">
                Tiles
            </a>
        </li>
        <li>
            <a href="ui_datepaginator.html">
								<span class="badge badge-roundless badge-success">
									new
								</span>
                Date Paginator
            </a>
        </li>
        <li>
            <a href="ui_nestable.html">
                Nestable List
            </a>
        </li>
    </ul>
</li>
<li class="active ">
    <a href="javascript:;">
        <i class="fa fa-puzzle-piece"></i>
						<span class="title">
							UI Components
						</span>
						<span class="selected">
						</span>
						<span class="arrow open">
						</span>
    </a>
    <ul class="sub-menu">
        <li>
            <a href="components_pickers.html">
                Pickers
            </a>
        </li>
        <li>
            <a href="components_dropdowns.html">
                Custom Dropdowns
            </a>
        </li>
        <li class="active">
            <a href="components_form_tools.html">
                Form Tools
            </a>
        </li>
        <li>
            <a href="components_editors.html">
                Markdown & WYSIWYG Editors
            </a>
        </li>
        <li>
            <a href="components_ion_sliders.html">
                Ion Range Sliders
            </a>
        </li>
        <li>
            <a href="components_noui_sliders.html">
                NoUI Range Sliders
            </a>
        </li>
        <li>
            <a href="components_jqueryui_sliders.html">
                jQuery UI Sliders
            </a>
        </li>
        <li>
            <a href="components_knob_dials.html">
                Knob Circle Dials
            </a>
        </li>
    </ul>
</li>
<li>
    <a href="javascript:;">
        <i class="fa fa-table"></i>
						<span class="title">
							Form Stuff
						</span>
						<span class="arrow ">
						</span>
    </a>
    <ul class="sub-menu">
        <li>
            <a href="form_controls.html">
                Form Controls
            </a>
        </li>
        <li>
            <a href="form_layouts.html">
                Form Layouts
            </a>
        </li>
        <li>
            <a href="form_editable.html">
								<span class="badge badge-roundless badge-warning">
									new
								</span>
                Form X-editable
            </a>
        </li>
        <li>
            <a href="form_wizard.html">
                Form Wizard
            </a>
        </li>
        <li>
            <a href="form_validation.html">
                Form Validation
            </a>
        </li>
        <li>
            <a href="form_image_crop.html">
								<span class="badge badge-roundless badge-important">
									new
								</span>
                Image Cropping
            </a>
        </li>
        <li>
            <a href="form_fileupload.html">
                Multiple File Upload
            </a>
        </li>
        <li>
            <a href="form_dropzone.html">
                Dropzone File Upload
            </a>
        </li>
    </ul>
</li>
<li>
    <a href="javascript:;">
        <i class="fa fa-envelope-o"></i>
						<span class="title">
							Email Templates
						</span>
						<span class="arrow ">
						</span>
    </a>
    <ul class="sub-menu">
        <li>
            <a href="email_newsletter.html">
                Responsive Newsletter<br>
                Email Template
            </a>
        </li>
        <li>
            <a href="email_system.html">
                Responsive System<br>
                Email Template
            </a>
        </li>
    </ul>
</li>
<li>
    <a href="javascript:;">
        <i class="fa fa-sitemap"></i>
						<span class="title">
							Pages
						</span>
						<span class="arrow ">
						</span>
    </a>
    <ul class="sub-menu">
        <li>
            <a href="page_portfolio.html">
                <i class="fa fa-briefcase"></i>
								<span class="badge badge-warning badge-roundless">
									new
								</span>
                Portfolio
            </a>
        </li>
        <li>
            <a href="page_timeline.html">
                <i class="fa fa-clock-o"></i>
								<span class="badge badge-info">
									4
								</span>
                Timeline
            </a>
        </li>
        <li>
            <a href="page_coming_soon.html">
                <i class="fa fa-cogs"></i>
                Coming Soon
            </a>
        </li>
        <li>
            <a href="page_blog.html">
                <i class="fa fa-comments"></i>
                Blog
            </a>
        </li>
        <li>
            <a href="page_blog_item.html">
                <i class="fa fa-font"></i>
                Blog Post
            </a>
        </li>
        <li>
            <a href="page_news.html">
                <i class="fa fa-coffee"></i>
								<span class="badge badge-success">
									9
								</span>
                News
            </a>
        </li>
        <li>
            <a href="page_news_item.html">
                <i class="fa fa-bell"></i>
                News View
            </a>
        </li>
        <li>
            <a href="page_about.html">
                <i class="fa fa-group"></i>
                About Us
            </a>
        </li>
        <li>
            <a href="page_contact.html">
                <i class="fa fa-envelope-o"></i>
                Contact Us
            </a>
        </li>
        <li>
            <a href="page_calendar.html">
                <i class="fa fa-calendar"></i>
								<span class="badge badge-important">
									14
								</span>
                Calendar
            </a>
        </li>
    </ul>
</li>
<li>
    <a href="javascript:;">
        <i class="fa fa-gift"></i>
						<span class="title">
							Extra
						</span>
						<span class="arrow ">
						</span>
    </a>
    <ul class="sub-menu">
        <li>
            <a href="extra_profile.html">
                User Profile
            </a>
        </li>
        <li>
            <a href="extra_lock.html">
                Lock Screen
            </a>
        </li>
        <li>
            <a href="extra_faq.html">
                FAQ
            </a>
        </li>
        <li>
            <a href="inbox.html">
								<span class="badge badge-important">
									4
								</span>
                Inbox
            </a>
        </li>
        <li>
            <a href="extra_search.html">
                Search Results
            </a>
        </li>
        <li>
            <a href="extra_invoice.html">
                Invoice
            </a>
        </li>
        <li>
            <a href="extra_pricing_table.html">
                Pricing Tables
            </a>
        </li>
        <li>
            <a href="extra_404_option1.html">
                404 Page Option 1
            </a>
        </li>
        <li>
            <a href="extra_404_option2.html">
                404 Page Option 2
            </a>
        </li>
        <li>
            <a href="extra_404_option3.html">
                404 Page Option 3
            </a>
        </li>
        <li>
            <a href="extra_500_option1.html">
                500 Page Option 1
            </a>
        </li>
        <li>
            <a href="extra_500_option2.html">
                500 Page Option 2
            </a>
        </li>
    </ul>
</li>
<li>
    <a href="javascript:;">
        <i class="fa fa-folder-open"></i>
						<span class="title">
							Multi Level Menu
						</span>
						<span class="arrow ">
						</span>
    </a>
    <ul class="sub-menu">
        <li>
            <a href="javascript:;">
                <i class="fa fa-cogs"></i> Item 1
								<span class="arrow">
								</span>
            </a>
            <ul class="sub-menu">
                <li>
                    <a href="javascript:;">
                        <i class="fa fa-user"></i>
                        Sample Link 1
										<span class="arrow">
										</span>
                    </a>
                    <ul class="sub-menu">
                        <li>
                            <a href="#">
                                <i class="fa fa-remove"></i> Sample Link 1
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-pencil"></i> Sample Link 1
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <i class="fa fa-edit"></i> Sample Link 1
                            </a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-user"></i> Sample Link 1
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-external-link"></i> Sample Link 2
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-bell"></i> Sample Link 3
                    </a>
                </li>
            </ul>
        </li>
        <li>
            <a href="javascript:;">
                <i class="fa fa-globe"></i> Item 2
								<span class="arrow">
								</span>
            </a>
            <ul class="sub-menu">
                <li>
                    <a href="#">
                        <i class="fa fa-user"></i> Sample Link 1
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-external-link"></i> Sample Link 1
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-bell"></i> Sample Link 1
                    </a>
                </li>
            </ul>
        </li>
        <li>
            <a href="#">
                <i class="fa fa-folder-open"></i>
                Item 3
            </a>
        </li>
    </ul>
</li>
<li>
    <a href="javascript:;">
        <i class="fa fa-user"></i>
						<span class="title">
							Login Options
						</span>
						<span class="arrow ">
						</span>
    </a>
    <ul class="sub-menu">
        <li>
            <a href="login.html">
                Login Form 1
            </a>
        </li>
        <li>
            <a href="login_soft.html">
                Login Form 2
            </a>
        </li>
    </ul>
</li>
<li>
    <a href="javascript:;">
        <i class="fa fa-th"></i>
						<span class="title">
							Data Tables
						</span>
						<span class="arrow ">
						</span>
    </a>
    <ul class="sub-menu">
        <li>
            <a href="table_basic.html">
                Basic Datatables
            </a>
        </li>
        <li>
            <a href="table_responsive.html">
                Responsive Datatables
            </a>
        </li>
        <li>
            <a href="table_managed.html">
                Managed Datatables
            </a>
        </li>
        <li>
            <a href="table_editable.html">
                Editable Datatables
            </a>
        </li>
        <li>
            <a href="table_advanced.html">
                Advanced Datatables
            </a>
        </li>
        <li>
            <a href="table_ajax.html">
                Ajax Datatables
            </a>
        </li>
    </ul>
</li>
<li>
    <a href="javascript:;">
        <i class="fa fa-file-text"></i>
						<span class="title">
							Portlets
						</span>
						<span class="arrow ">
						</span>
    </a>
    <ul class="sub-menu">
        <li>
            <a href="portlet_general.html">
                General Portlets
            </a>
        </li>
        <li>
            <a href="portlet_ajax.html">
                Ajax Portlets
            </a>
        </li>
        <li>
            <a href="portlet_draggable.html">
                Draggable Portlets
            </a>
        </li>
    </ul>
</li>
<li>
    <a href="javascript:;">
        <i class="fa fa-map-marker"></i>
						<span class="title">
							Maps
						</span>
						<span class="arrow ">
						</span>
    </a>
    <ul class="sub-menu">
        <li>
            <a href="maps_google.html">
                Google Maps
            </a>
        </li>
        <li>
            <a href="maps_vector.html">
                Vector Maps
            </a>
        </li>
    </ul>
</li>
<li class="last ">
    <a href="charts.html">
        <i class="fa fa-bar-chart-o"></i>
						<span class="title">
							Visual Charts
						</span>
    </a>
</li>
</ul>
<!-- END SIDEBAR MENU -->
</div>
</div>
<!-- END SIDEBAR -->
<!-- BEGIN CONTENT -->
<div class="page-content-wrapper">
<div class="page-content">
<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
<div class="modal fade" id="portlet-config" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                <h4 class="modal-title">Modal title</h4>
            </div>
            <div class="modal-body">
                Widget settings form goes here
            </div>
            <div class="modal-footer">
                <button type="button" class="btn blue">Save changes</button>
                <button type="button" class="btn default" data-dismiss="modal">Close</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
<!-- BEGIN STYLE CUSTOMIZER -->
<div class="theme-panel hidden-xs hidden-sm">
    <div class="toggler">
    </div>
    <div class="toggler-close">
    </div>
    <div class="theme-options">
        <div class="theme-option theme-colors clearfix">
						<span>
							 THEME COLOR
						</span>
            <ul>
                <li class="color-black current color-default" data-style="default">
                </li>
                <li class="color-blue" data-style="blue">
                </li>
                <li class="color-brown" data-style="brown">
                </li>
                <li class="color-purple" data-style="purple">
                </li>
                <li class="color-grey" data-style="grey">
                </li>
                <li class="color-white color-light" data-style="light">
                </li>
            </ul>
        </div>
        <div class="theme-option">
						<span>
							 Layout
						</span>
            <select class="layout-option form-control input-small">
                <option value="fluid" selected="selected">Fluid</option>
                <option value="boxed">Boxed</option>
            </select>
        </div>
        <div class="theme-option">
						<span>
							 Header
						</span>
            <select class="header-option form-control input-small">
                <option value="fixed" selected="selected">Fixed</option>
                <option value="default">Default</option>
            </select>
        </div>
        <div class="theme-option">
						<span>
							 Sidebar
						</span>
            <select class="sidebar-option form-control input-small">
                <option value="fixed">Fixed</option>
                <option value="default" selected="selected">Default</option>
            </select>
        </div>
        <div class="theme-option">
						<span>
							 Sidebar Position
						</span>
            <select class="sidebar-pos-option form-control input-small">
                <option value="left" selected="selected">Left</option>
                <option value="right">Right</option>
            </select>
        </div>
        <div class="theme-option">
						<span>
							 Footer
						</span>
            <select class="footer-option form-control input-small">
                <option value="fixed">Fixed</option>
                <option value="default" selected="selected">Default</option>
            </select>
        </div>
    </div>
</div>
<!-- END STYLE CUSTOMIZER -->
<!-- BEGIN PAGE HEADER-->
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PAGE TITLE & BREADCRUMB-->
        <h3 class="page-title">
            Form Tools <small>input spinner, switches, input masks and more</small>
        </h3>
        <ul class="page-breadcrumb breadcrumb">
            <li class="btn-group">
                <button type="button" class="btn blue dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-delay="1000" data-close-others="true">
							<span>
								Actions
							</span>
                    <i class="fa fa-angle-down"></i>
                </button>
                <ul class="dropdown-menu pull-right" role="menu">
                    <li>
                        <a href="#">
                            Action
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            Another action
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            Something else here
                        </a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="#">
                            Separated link
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <i class="fa fa-home"></i>
                <a href="index.html">
                    Home
                </a>
                <i class="fa fa-angle-right"></i>
            </li>
            <li>
                <a href="#">
                    UI Components
                </a>
                <i class="fa fa-angle-right"></i>
            </li>
            <li>
                <a href="#">
                    Form Tools
                </a>
            </li>
        </ul>
        <!-- END PAGE TITLE & BREADCRUMB-->
    </div>
</div>
<!-- END PAGE HEADER-->
<!-- BEGIN PAGE CONTENT-->
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PORTLET-->
        <div class="portlet box yellow">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-reorder"></i>Twitter Auto Complete(typeahead.js)
                </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse">
                    </a>
                    <a href="#portlet-config" data-toggle="modal" class="config">
                    </a>
                    <a href="javascript:;" class="reload">
                    </a>
                    <a href="javascript:;" class="remove">
                    </a>
                </div>
            </div>
            <div class="portlet-body form">
                <form action="#" id="form-username" class="form-horizontal form-bordered">
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Basic Auto Complete</label>
                        <div class="col-sm-4">
                            <div class="input-group">
											<span class="input-group-addon">
												<i class="fa fa-user"></i>
											</span>
                                <input type="text" id="typeahead_example_1" name="typeahead_example_1" class="form-control"/>
                            </div>
                            <p class="help-block">
                                E.g: metronic, keenthemes.<br>
											<span class="label label-success label-sm">
												 Learn more:
											</span>
                                <a target="_blank" href="http://twitter.github.io/typeahead.js/">
                                    http://twitter.github.io/typeahead.js/
                                </a>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Country Auto Complete</label>
                        <div class="col-sm-4">
                            <div class="input-group">
											<span class="input-group-addon">
												<i class="fa fa-search"></i>
											</span>
                                <input type="text" id="typeahead_example_2" name="typeahead_example_2" class="form-control"/>
                            </div>
                            <p class="help-block">
                                E.g: USA, Malaysia. Prefetch from JSON source</code>
                            </p>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Custom Template</label>
                        <div class="col-sm-4">
                            <div class="input-group">
											<span class="input-group-addon">
												<i class="fa fa-cogs"></i>
											</span>
                                <input type="text" id="typeahead_example_3" name="typeahead_example_3" class="form-control"/>
                            </div>
                            <p class="help-block">
                                Uses a precompiled template to customize look of suggestion.</code>
                            </p>
                        </div>
                    </div>
                    <div class="form-group ">
                        <label class="col-sm-3 control-label">Multiple Sections with Headers</label>
                        <div class="col-sm-4">
                            <div class="input-group">
											<span class="input-group-addon">
												<i class="fa fa-check"></i>
											</span>
                                <input type="text" id="typeahead_example_4" name="typeahead_example_4" class="form-control"/>
                            </div>
                            <p class="help-block">
                                Two datasets that are prefetched, stored, and searched on the client. Highlighting is enabled.
                            </p>
                        </div>
                    </div>
                    <div class="form-group last">
                        <label class="control-label col-md-3">Modal</label>
                        <div class="col-md-4">
                            <a href="#myModal_autocomplete" role="button" class="btn red" data-toggle="modal">
                                View in Modal
                            </a>
                        </div>
                    </div>
                    <div class="form-actions fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-offset-3 col-md-9">
                                    <button type="submit" class="btn purple"><i class="fa fa-check"></i> Submit</button>
                                    <button type="button" class="btn default">Cancel</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                <div id="myModal_autocomplete" class="modal fade" role="dialog" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                <h4 class="modal-title">Radio Switch in Modal</h4>
                            </div>
                            <div class="modal-body form">
                                <form action="#" class="form-horizontal form-row-seperated">
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">Basic Auto Complete</label>
                                        <div class="col-sm-8">
                                            <div class="input-group">
															<span class="input-group-addon">
																<i class="fa fa-user"></i>
															</span>
                                                <input type="text" id="typeahead_example_modal_1" name="typeahead_example_modal_1" class="form-control"/>
                                            </div>
                                            <p class="help-block">
                                                E.g: metronic, keenthemes.<br>
															<span class="label label-success label-sm">
																 Learn more:
															</span>
                                                <a target="_blank" href="http://twitter.github.io/typeahead.js/">
                                                    http://twitter.github.io/typeahead.js/
                                                </a>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">Country Auto Complete</label>
                                        <div class="col-sm-8">
                                            <div class="input-group">
															<span class="input-group-addon">
																<i class="fa fa-search"></i>
															</span>
                                                <input type="text" id="typeahead_example_modal_2" name="typeahead_example_modal_2" class="form-control"/>
                                            </div>
                                            <p class="help-block">
                                                E.g: USA, Malaysia. Prefetch from JSON source</code>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-sm-4 control-label">Custom Template</label>
                                        <div class="col-sm-8">
                                            <div class="input-group">
															<span class="input-group-addon">
																<i class="fa fa-cogs"></i>
															</span>
                                                <input type="text" id="typeahead_example_modal_3" name="typeahead_example_modal_3" class="form-control"/>
                                            </div>
                                            <p class="help-block">
                                                Uses a precompiled template to customize look of suggestion.</code>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="form-group last">
                                        <label class="col-sm-4 control-label">Multiple Sections with Headers</label>
                                        <div class="col-sm-8">
                                            <div class="input-group">
															<span class="input-group-addon">
																<i class="fa fa-check"></i>
															</span>
                                                <input type="text" id="typeahead_example_modal_4" name="typeahead_example_modal_4" class="form-control"/>
                                            </div>
                                            <p class="help-block">
                                                Two datasets that are prefetched, stored, and searched on the client. Highlighting is enabled.
                                            </p>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary"><i class="fa fa-check"></i> Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PORTLET-->
        <div class="portlet box blue">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-reorder"></i>Form Tools
                </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse">
                    </a>
                    <a href="#portlet-config" data-toggle="modal" class="config">
                    </a>
                    <a href="javascript:;" class="reload">
                    </a>
                    <a href="javascript:;" class="remove">
                    </a>
                </div>
            </div>
            <div class="portlet-body form">
                <!-- BEGIN FORM-->
                <form action="#" id="form-username" class="form-horizontal form-bordered">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">Google reCaptcha</label>
                            <div class="col-md-9">
                                <!-- BEGIN REPCAPTCHA -->
                                <div id="recaptcha_widget" class="form-recaptcha">
                                    <div class="form-recaptcha-img" style="width: 325px">
                                        <a id="recaptcha_image" href="#">
                                        </a>
                                        <div class="recaptcha_only_if_incorrect_sol display-none" style="color:red">
                                            Incorrect please try again
                                        </div>
                                    </div>
                                    <div class="input-group" style="width: 325px">
                                        <input type="text" class="form-control" id="recaptcha_response_field" name="recaptcha_response_field">
                                        <div class="input-group-btn">
                                            <a class="btn default" href="javascript:Recaptcha.reload()">
                                                <i class="fa fa-refresh"></i>
                                            </a>
                                            <a class="btn default recaptcha_only_if_image" href="javascript:Recaptcha.switch_type('audio')">
                                                <i title="Get an audio CAPTCHA" class="fa fa-headphones"></i>
                                            </a>
                                            <a class="btn default recaptcha_only_if_audio" href="javascript:Recaptcha.switch_type('image')">
                                                <i title="Get an image CAPTCHA" class="fa fa-picture-o"></i>
                                            </a>
                                            <a class="btn default" href="javascript:Recaptcha.showhelp()">
                                                <i class="fa fa-question-circle"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <p class="help-block">
													<span class="recaptcha_only_if_image">
														 Enter the words above
													</span>
													<span class="recaptcha_only_if_audio">
														 Enter the numbers you hear
													</span>
                                    </p>
                                </div>
                                <!-- END REPCAPTCHA -->
                                <p class="help-block">
												<span class="label label-sm label-danger">
													 Note:
												</span>
                                    Please visit
                                    <a href="http://www.google.com/recaptcha" target="_blank">
                                        http://www.google.com/recaptcha
                                    </a>
                                    to learn more about the Google reCaptcha
                                </p>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Username #1</label>
                            <div class="col-md-4">
                                <div class="input-group" style="text-align:left">
                                    <input type="text" class="form-control" name="username1" id="username1_input">
												<span class="input-group-btn">
													<a href="javascript:;" class="btn green" id="username1_checker">
                                                        <i class="fa fa-check"></i> Check
                                                    </a>
												</span>
                                </div>
                                <div class="help-block">
                                    Type a username(E.g: user1, user2) and check its availability.
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Username #2</label>
                            <div class="col-md-4">
                                <div class="input-icon right">
                                    <input type="text" class="form-control" name="username1" id="username2_input">
                                </div>
                                <div class="help-block">
                                    Type a username(E.g: user1, user2) and check its availability on focus lost
                                </div>
                            </div>
                        </div>
                        <div class="form-group last password-strength">
                            <label class="control-label col-md-3">Password</label>
                            <div class="col-md-4">
                                <input type="text" class="form-control" name="password" id="password_strength">
											<span class="help-block">
												 Type a password to check its strength
											</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-offset-3 col-md-9">
                                    <button type="submit" class="btn purple"><i class="fa fa-check"></i> Submit</button>
                                    <button type="button" class="btn default">Cancel</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                <!-- END FORM-->
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PORTLET-->
        <div class="portlet box purple">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-reorder"></i>Bootstrap Input MaxLength
                </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse">
                    </a>
                    <a href="#portlet-config" data-toggle="modal" class="config">
                    </a>
                    <a href="javascript:;" class="reload">
                    </a>
                    <a href="javascript:;" class="remove">
                    </a>
                </div>
            </div>
            <div class="portlet-body form">
                <!-- BEGIN FORM-->
                <form action="#" class="form-horizontal form-bordered">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">Default usage</label>
                            <div class="col-md-4">
                                <input type="text" class="form-control" maxlength="25" name="defaultconfig" id="maxlength_defaultconfig">
											<span class="help-block">
												 Maxlength is 25 chars. The badge will show up by default when the remaining chars are 10 or less.
											</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Change the threshold value</label>
                            <div class="col-md-4">
                                <input type="text" class="form-control" maxlength="25" name="defaultconfig" id="maxlength_thresholdconfig">
											<span class="help-block">
												 Maxlength is 25 chars. Do you want the badge to show up when there are 20 chars or less? Use the threshold option: <code>threshold: 20</code>
											</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Advance usage</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" maxlength="25" name="defaultconfig" id="maxlength_alloptions">
											<span class="help-block">
												 This is a complete example where all the options configured for the bootstrap-maxlength counter are setted. Please note: if the <code>alwaysShow</code> option is enabled, the <code>threshold</code>
											</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Textarea</label>
                            <div class="col-md-9">
                                <textarea id="maxlength_textarea" class="form-control" maxlength="225" rows="2" placeholder="This textarea has a limit of 225 chars."></textarea>
											<span class="help-block">
												 Bootstrap maxlength supports textarea as well as inputs. Even on old IE.
											</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Position</label>
                            <div class="col-md-9">
                                <input type="text" class="form-control" maxlength="25" name="defaultconfig" id="maxlength_placement">
											<span class="help-block">
												 The field counter can be positioned at the top, bottom, left or right. You can also place the maxlength indicator on the corners: <code>bottom-right</code>, <code>top-right</code>, <code>top-left</code>, <code>bottom-left</code> and <code>centered-right</code>. All you need to do is specify the <code>placement</code> option, with one of those strings.
											</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-offset-3 col-md-9">
                                    <button type="submit" class="btn green"><i class="fa fa-check"></i> Submit</button>
                                    <button type="button" class="btn default">Cancel</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                <!-- END FORM-->
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PORTLET-->
        <div class="portlet box green">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-reorder"></i>Spinners
                </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse">
                    </a>
                    <a href="#portlet-config" data-toggle="modal" class="config">
                    </a>
                    <a href="javascript:;" class="reload">
                    </a>
                    <a href="javascript:;" class="remove">
                    </a>
                </div>
            </div>
            <div class="portlet-body form">
                <!-- BEGIN FORM-->
                <form action="#" class="form-horizontal form-bordered">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">Spinner 1</label>
                            <div class="col-md-9">
                                <div id="spinner1">
                                    <div class="input-group input-small">
                                        <input type="text" class="spinner-input form-control" maxlength="3" readonly>
                                        <div class="spinner-buttons input-group-btn btn-group-vertical">
                                            <button type="button" class="btn spinner-up btn-xs blue">
                                                <i class="fa fa-angle-up"></i>
                                            </button>
                                            <button type="button" class="btn spinner-down btn-xs blue">
                                                <i class="fa fa-angle-down"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
											<span class="help-block">
												 basic example
											</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Spinner 2</label>
                            <div class="col-md-9">
                                <div id="spinner2">
                                    <div class="input-group input-small">
                                        <input type="text" class="spinner-input form-control" maxlength="3" readonly>
                                        <div class="spinner-buttons input-group-btn btn-group-vertical">
                                            <button type="button" class="btn spinner-up btn-xs red">
                                                <i class="fa fa-angle-up"></i>
                                            </button>
                                            <button type="button" class="btn spinner-down btn-xs red">
                                                <i class="fa fa-angle-down"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
											<span class="help-block">
												 disabled state
											</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Spinner 3</label>
                            <div class="col-md-9">
                                <div id="spinner3">
                                    <div class="input-group" style="width:150px;">
                                        <input type="text" class="spinner-input form-control" maxlength="3" readonly>
                                        <div class="spinner-buttons input-group-btn">
                                            <button type="button" class="btn spinner-up default">
                                                <i class="fa fa-angle-up"></i>
                                            </button>
                                            <button type="button" class="btn spinner-down default">
                                                <i class="fa fa-angle-down"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
											<span class="help-block">
												 with max value: 10
											</span>
                            </div>
                        </div>
                        <div class="form-group last">
                            <label class="control-label col-md-3">Spinner 4</label>
                            <div class="col-md-9">
                                <div id="spinner4">
                                    <div class="input-group" style="width:150px;">
                                        <div class="spinner-buttons input-group-btn">
                                            <button type="button" class="btn spinner-up blue">
                                                <i class="fa fa-plus"></i>
                                            </button>
                                        </div>
                                        <input type="text" class="spinner-input form-control" maxlength="3" readonly>
                                        <div class="spinner-buttons input-group-btn">
                                            <button type="button" class="btn spinner-down red">
                                                <i class="fa fa-minus"></i>
                                            </button>
                                        </div>
                                    </div>
                                </div>
											<span class="help-block">
												 with step: 5
											</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-offset-3 col-md-9">
                                    <button type="submit" class="btn green"><i class="fa fa-check"></i> Submit</button>
                                    <button type="button" class="btn default">Cancel</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                <!-- END FORM-->
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PORTLET-->
        <div class="portlet box yellow">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-reorder"></i>Bootstrap Switch
                </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse">
                    </a>
                    <a href="#portlet-config" data-toggle="modal" class="config">
                    </a>
                    <a href="javascript:;" class="reload">
                    </a>
                    <a href="javascript:;" class="remove">
                    </a>
                </div>
            </div>
            <div class="portlet-body form">
                <!-- BEGIN FORM-->
                <form action="#" class="form-horizontal form-bordered">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">Default Sizes</label>
                            <div class="col-md-9">
                                <input type="checkbox" checked class="make-switch switch-large">
                                <input type="checkbox" checked class="make-switch">
                                <input type="checkbox" checked class="make-switch switch-small">
                                <input type="checkbox" checked class="make-switch switch-mini">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Colors</label>
                            <div class="col-md-9">
                                <input type="checkbox" class="make-switch" checked data-on="primary" data-off="info">
                                <input type="checkbox" class="make-switch" checked data-on="info" data-off="success">
                                <input type="checkbox" class="make-switch" checked data-on="success" data-off="warning">
                                <input type="checkbox" class="make-switch" checked data-on="warning" data-off="danger">
                                <input type="checkbox" class="make-switch" checked data-on="danger" data-off="default">
                                <input type="checkbox" class="make-switch" checked data-on="default" data-off="primary">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Disabled / Readonly</label>
                            <div class="col-md-9">
                                <input type="checkbox" checked disabled class="make-switch"/>
                                <input type="checkbox" checked readonly class="make-switch"/>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Text</label>
                            <div class="col-md-9">
                                <input type="checkbox" class="make-switch" data-on-label="Yes" data-off-label="No">
                                <input type="checkbox" class="make-switch" data-on-label="1" data-off-label="0">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Long Text</label>
                            <div class="col-md-9">
                                <input type="checkbox" class="make-switch" data-on-label="&nbsp;External&nbsp;" data-off-label="&nbsp;Internal&nbsp;">
                                <input type="checkbox" class="make-switch" data-on-label="&nbsp;Enabled&nbsp;&nbsp;" data-off-label="&nbsp;Disabled&nbsp;">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Label Text</label>
                            <div class="col-md-9">
                                <input type="checkbox" class="make-switch" checked data-text-label="TV">
                                <input type="checkbox" class="make-switch" checked data-text-label="Signal">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">HTML Text</label>
                            <div class="col-md-9">
                                <input type="checkbox" class="make-switch" checked data-on-label="<i class='fa fa-check'></i>" data-off-label="<i class='fa fa-times'></i>"> <input type="checkbox" class="make-switch" checked data-on-label="<i class='fa fa-user'></i>" data-off-label="<i class='fa fa-trash-o'></i>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">HTML Text Label Icon</label>
                            <div class="col-md-9">
                                <input type="checkbox" checked class="make-switch switch-large" data-label-icon="fa fa-fullscreen" data-on-label="<i class='fa fa-check'></i>" data-off-label="<i class='fa fa-times'></i>"> <input type="checkbox" checked class="make-switch switch-large" data-label-icon="fa fa-youtube" data-on-label="<i class='fa fa-thumbs-up'></i>" data-off-label="<i class='fa fa-thumbs-down'></i>">
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Radio Group</label>
                            <div class="col-md-9">
                                <div class="margin-bottom-10">
                                    <label for="option1">Option 1</label>
                                    <input id="option1" type="radio" name="radio1" value="option1" class="make-switch switch-radio1">
                                </div>
                                <div class="margin-bottom-10">
                                    <label for="option2">Option 2</label>
                                    <input id="option2" type="radio" name="radio1" value="option2" class="make-switch switch-radio1">
                                </div>
                                <div class="margin-bottom-10">
                                    <label for="option3">Option 3</label>
                                    <input id="option3" type="radio" name="radio1" value="option3" class="make-switch switch-radio1">
                                </div>
                            </div>
                        </div>
                        <div class="form-group last">
                            <label class="control-label col-md-3">Modal</label>
                            <div class="col-md-9">
                                <a href="#myModal" role="button" class="btn red" data-toggle="modal">
                                    View in Modal
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-offset-3 col-md-9">
                                    <button type="submit" class="btn green"><i class="fa fa-check"></i> Submit</button>
                                    <button type="button" class="btn default">Cancel</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                <div id="myModal" class="modal fade" role="dialog" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
                                <h4 class="modal-title">Bootstrap switches</h4>
                            </div>
                            <div class="modal-body">
                                <form action="#" class="form-horizontal">
                                    <div class="form-group">
                                        <label class="control-label col-md-3">Default Sizes</label>
                                        <div class="col-md-9">
                                            <input type="checkbox" checked class="make-switch switch-large">
                                            <input type="checkbox" checked class="make-switch">
                                            <input type="checkbox" checked class="make-switch switch-small">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="control-label col-md-3">Colors</label>
                                        <div class="col-md-9">
                                            <input type="checkbox" class="make-switch" checked data-on="primary" data-off="info">
                                            <input type="checkbox" class="make-switch" checked data-on="success" data-off="warning">
                                            <input type="checkbox" class="make-switch" checked data-on="warning" data-off="danger">
                                        </div>
                                    </div>
                                    <div class="form-group last">
                                        <label class="control-label col-md-3">Disabled / Readonly</label>
                                        <div class="col-md-9">
                                            <input type="checkbox" checked disabled class="make-switch"/>
                                            <input type="checkbox" checked readonly class="make-switch"/>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary"><i class="fa fa-check"></i> Save changes</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END FORM-->
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PORTLET-->
        <div class="portlet box blue">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-reorder"></i>Bootstrap TouchSpin
                </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse">
                    </a>
                    <a href="#portlet-config" data-toggle="modal" class="config">
                    </a>
                    <a href="javascript:;" class="reload">
                    </a>
                    <a href="javascript:;" class="remove">
                    </a>
                </div>
            </div>
            <div class="portlet-body form">
                <!-- BEGIN FORM-->
                <form action="#" class="form-horizontal form-bordered">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">Spinner 1</label>
                            <div class="col-md-9">
                                <div class="input-inline input-medium">
                                    <input id="touchspin_demo1" type="text" value="55" name="demo1" class="form-control">
                                </div>
											<span class="help-block">
												 basic example
											</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Spinner 2</label>
                            <div class="col-md-9">
                                <div class="input-inline input-medium">
                                    <input id="touchspin_demo2" type="text" value="55" name="demo1" class="form-control">
                                </div>
											<span class="help-block">
												 example with decimal steps
											</span>
                            </div>
                        </div>
                        <div class="form-actions fluid">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="col-md-offset-3 col-md-9">
                                        <button type="submit" class="btn green"><i class="fa fa-check"></i> Submit</button>
                                        <button type="button" class="btn default">Cancel</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="portlet box blue ">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-reorder"></i>IP Address Input
                </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse">
                    </a>
                    <a href="javascript:;" class="reload">
                    </a>
                </div>
            </div>
            <div class="portlet-body form">
                <!-- BEGIN FORM-->
                <form action="#" class="form-horizontal form-row-seperated">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">IPV4</label>
                            <div class="col-md-4">
                                <input class="form-control" id="input_ipv4" type="text"/>
											<span class="help-block">
												 192.168.120.150
											</span>
                            </div>
                        </div>
                        <div class="form-group last">
                            <label class="control-label col-md-3">IPV6</label>
                            <div class="col-md-4">
                                <input class="form-control" id="input_ipv6" type="text"/>
											<span class="help-block">
												 3ffe:1900:4545:3:200:f8ff:fe21:67cf
											</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-offset-3 col-md-9">
                                    <button type="submit" class="btn purple"><i class="fa fa-check"></i> Submit</button>
                                    <button type="button" class="btn default">Cancel</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                <!-- END FORM-->
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <div class="portlet box red">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-reorder"></i>Input Masks
                </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse">
                    </a>
                    <a href="javascript:;" class="reload">
                    </a>
                </div>
            </div>
            <div class="portlet-body form">
                <!-- BEGIN FORM-->
                <form action="#" class="form-horizontal form-bordered">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">Date 1</label>
                            <div class="col-md-4">
                                <input class="form-control" id="mask_date" type="text"/>
											<span class="help-block">
												 y/m/d
											</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Date 2</label>
                            <div class="col-md-4">
                                <input class="form-control" id="mask_date1" type="text"/>
											<span class="help-block">
												 change the placeholder
											</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Date 3</label>
                            <div class="col-md-4">
                                <input class="form-control" id="mask_date2" type="text"/>
											<span class="help-block">
												 multi-char placeholder
											</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Phone</label>
                            <div class="col-md-4">
                                <input class="form-control" id="mask_phone" type="text"/>
											<span class="help-block">
												 (999) 999-9999
											</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Tax ID</label>
                            <div class="col-md-4">
                                <input class="form-control" id="mask_tin" type="text"/>
											<span class="help-block">
												 99-9999999
											</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Number</label>
                            <div class="col-md-4">
                                <input class="form-control" id="mask_number" type="text"/>
											<span class="help-block">
												 mask "9" or mask "99" or ... mask "9999999999"
											</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Currency</label>
                            <div class="col-md-4">
                                <input class="form-control" id="mask_currency" type="text"/>
											<span class="help-block">
												 123456 => € ___.__1.234,56
											</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Currency 2</label>
                            <div class="col-md-4">
                                <input class="form-control" id="mask_currency2" type="text"/>
											<span class="help-block">
												 123456 => € ___.__1.234,56(left aligned)
											</span>
                            </div>
                        </div>
                        <div class="form-group last">
                            <label class="control-label col-md-3">SSN</label>
                            <div class="col-md-4">
                                <input class="form-control" id="mask_ssn" type="text"/>
											<span class="help-block">
												 999-99-9999. remove the empty mask on blur or when not empty removes the optional trailing part
											</span>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-offset-3 col-md-9">
                                    <button type="submit" class="btn purple"><i class="fa fa-check"></i> Submit</button>
                                    <button type="button" class="btn default">Cancel</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                <!-- END FORM-->
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PORTLET-->
        <div class="portlet box purple">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-reorder"></i>Tags Input
                </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse">
                    </a>
                    <a href="#portlet-config" data-toggle="modal" class="config">
                    </a>
                    <a href="javascript:;" class="reload">
                    </a>
                    <a href="javascript:;" class="remove">
                    </a>
                </div>
            </div>
            <div class="portlet-body ">
                <!-- BEGIN FORM-->
                <form action="#" class="form-horizontal">
                    <div class="form-group">
                        <label class="control-label col-md-3">Default</label>
                        <div class="col-md-9">
                            <input id="tags_1" type="text" class="form-control tags" value="foo,bar,baz,roffle"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3">Fixed Width</label>
                        <div class="col-md-6">
                            <input id="tags_2" type="text" class="form-control tags medium" value="tag1,tag2"/>
                        </div>
                    </div>
                </form>
                <!-- END FORM-->
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>
<div class="row">
    <div class="col-md-12">
        <!-- BEGIN PORTLET-->
        <div class="portlet box blue">
            <div class="portlet-title">
                <div class="caption">
                    <i class="fa fa-reorder"></i>Advanced File Input
                </div>
                <div class="tools">
                    <a href="javascript:;" class="collapse">
                    </a>
                    <a href="#portlet-config" data-toggle="modal" class="config">
                    </a>
                    <a href="javascript:;" class="reload">
                    </a>
                    <a href="javascript:;" class="remove">
                    </a>
                </div>
            </div>
            <div class="portlet-body form">
                <!-- BEGIN FORM-->
                <form action="#" class="form-horizontal form-bordered">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="control-label col-md-3">Default</label>
                            <div class="col-md-9">
                                <div class="fileinput fileinput-new" data-provides="fileinput">
                                    <div class="input-group input-large">
                                        <div class="form-control uneditable-input span3" data-trigger="fileinput">
                                            <i class="fa fa-file fileinput-exists"></i>&nbsp;
														<span class="fileinput-filename">
														</span>
                                        </div>
													<span class="input-group-addon btn default btn-file">
														<span class="fileinput-new">
															 Select file
														</span>
														<span class="fileinput-exists">
															 Change
														</span>
														<input type="file" name="...">
													</span>
                                        <a href="#" class="input-group-addon btn default fileinput-exists" data-dismiss="fileinput">
                                            Remove
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="control-label col-md-3">Without input</label>
                            <div class="col-md-9">
                                <div class="fileinput fileinput-new" data-provides="fileinput">
												<span class="btn default btn-file">
													<span class="fileinput-new">
														 Select file
													</span>
													<span class="fileinput-exists">
														 Change
													</span>
													<input type="file" name="...">
												</span>
												<span class="fileinput-filename">
												</span>
                                    &nbsp;
                                    <a href="#" class="close fileinput-exists" data-dismiss="fileinput" style="float: none">
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="form-group ">
                            <label class="control-label col-md-3">Image Upload #1</label>
                            <div class="col-md-9">
                                <div class="fileinput fileinput-new" data-provides="fileinput">
                                    <div class="fileinput-preview thumbnail" data-trigger="fileinput" style="width: 200px; height: 150px;">
                                    </div>
                                    <div>
													<span class="btn default btn-file">
														<span class="fileinput-new">
															 Select image
														</span>
														<span class="fileinput-exists">
															 Change
														</span>
														<input type="file" name="...">
													</span>
                                        <a href="#" class="btn default fileinput-exists" data-dismiss="fileinput">
                                            Remove
                                        </a>
                                    </div>
                                </div>
                                <div class="clearfix margin-top-10">
												<span class="label label-danger">
													 NOTE!
												</span>
                                    Image preview only works in IE10+, FF3.6+, Safari6.0+, Chrome6.0+ and Opera11.1+. In older browsers the filename is shown instead.
                                </div>
                            </div>
                        </div>
                        <div class="form-group last">
                            <label class="control-label col-md-3">Image Upload #2</label>
                            <div class="col-md-9">
                                <div class="fileinput fileinput-new" data-provides="fileinput">
                                    <div class="fileinput-new thumbnail" style="width: 200px; height: 150px;">
                                        <img src="http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image" alt=""/>
                                    </div>
                                    <div class="fileinput-preview fileinput-exists thumbnail" style="max-width: 200px; max-height: 150px;">
                                    </div>
                                    <div>
													<span class="btn default btn-file">
														<span class="fileinput-new">
															 Select image
														</span>
														<span class="fileinput-exists">
															 Change
														</span>
														<input type="file" name="...">
													</span>
                                        <a href="#" class="btn default fileinput-exists" data-dismiss="fileinput">
                                            Remove
                                        </a>
                                    </div>
                                </div>
                                <div class="clearfix margin-top-10">
												<span class="label label-danger">
													 NOTE!
												</span>
                                    Image preview only works in IE10+, FF3.6+, Safari6.0+, Chrome6.0+ and Opera11.1+. In older browsers the filename is shown instead.
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-actions fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-offset-3 col-md-9">
                                    <button type="submit" class="btn purple"><i class="fa fa-check"></i> Submit</button>
                                    <button type="button" class="btn default">Cancel</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>
                <!-- END FORM-->
            </div>
        </div>
        <!-- END PORTLET-->
    </div>
</div>
<!-- END PAGE CONTENT-->
</div>
</div>
<!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="footer">
    <div class="footer-inner">
        2014 &copy; Metronic by keenthemes.
    </div>
    <div class="footer-tools">
		<span class="go-top">
			<i class="fa fa-angle-up"></i>
		</span>
    </div>
</div>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="assets/plugins/respond.min.js"></script>
<script src="assets/plugins/excanvas.min.js"></script>
<![endif]-->
<script src="assets/plugins/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap/js/bootstrap2-typeahead.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.blockui.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery.cokie.min.js" type="text/javascript"></script>
<script src="assets/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="assets/plugins/fuelux/js/spinner.min.js"></script>
<script type="text/javascript" src="assets/plugins/bootstrap-fileinput/bootstrap-fileinput.js"></script>
<script type="text/javascript" src="assets/plugins/jquery-inputmask/jquery.inputmask.bundle.min.js"></script>
<script type="text/javascript" src="assets/plugins/jquery.input-ip-address-control-1.0.min.js"></script>
<script src="assets/plugins/jquery.pwstrength.bootstrap/src/pwstrength.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap-switch/js/bootstrap-switch.min.js" type="text/javascript"></script>
<script src="assets/plugins/jquery-tags-input/jquery.tagsinput.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js" type="text/javascript"></script>
<script src="assets/plugins/bootstrap-touchspin/bootstrap.touchspin.js" type="text/javascript"></script>
<script src="assets/plugins/typeahead/handlebars.min.js" type="text/javascript"></script>
<script src="assets/plugins/typeahead/typeahead.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="assets/scripts/core/app.js"></script>
<script src="assets/scripts/custom/components-form-tools.js"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
    jQuery(document).ready(function() {
        // initiate layout and plugins
        App.init();
        ComponentsFormTools.init();
    });
</script>
<!-- BEGIN GOOGLE RECAPTCHA -->
<script type="text/javascript">
    var RecaptchaOptions = {
        theme : 'custom',
        custom_theme_widget: 'recaptcha_widget'
    };
</script>
<script type="text/javascript" src="https://www.google.com/recaptcha/api/challenge?k=6LcrK9cSAAAAALEcjG9gTRPbeA0yAVsKd8sBpFpR"></script>
<!-- END GOOGLE RECAPTCHA -->
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>