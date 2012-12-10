<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>{$page_name} - Student Online Clearance System</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width">

        <link rel="stylesheet" href="{$host}/public/css/bootstrap.min.css">
        {literal}
            <style>
                body {
                    padding-top: 60px;
                    padding-bottom: 40px;
                }
            </style>
        {/literal}
        <link rel="stylesheet" href="{$host}/public/css/bootstrap-responsive.min.css">
        <link rel="stylesheet" href="{$host}/public/css/main.css">

        <script src="{$host}/public/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    </head>
    <body>
        <!--[if lt IE 7]>
            <p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
        <![endif]-->

        <!-- This code is taken from http://twitter.github.com/bootstrap/examples/hero.html -->

        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="index.php"><img src="{$host}/public/img/logo.png"> Student Online Clearance System</a>
                    <div class="nav-collapse collapse">

                        {if isset($username)}
                            <div class="btn-group pull-right">
                                <button class="btn " onclick="window.location.href='index.php'"><i class="icon-user"></i> {$username}</button>
                                <button class="btn dropdown-toggle" data-toggle="dropdown">
                                    <span class="caret"></span>
                                </button>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="{$host}/settings.php"><i class="icon-wrench"></i> My Account</a>
                                    </li>
                                    <li>
                                        <a href="{$host}/index.php?action=logout"><i class="icon-off"></i> Logout</a>
                                    </li>
                                </ul>
                            </div>
                        {elseif $smarty.get.action != login_error}
                            {if $smarty.get.action != logout}
                                <form class="navbar-form pull-right" action="index.php?action=login" method="post">
                                    <input class="span2" type="text" placeholder="Username" name="username">
                                    <input class="span2" type="password" placeholder="Password" name="password">
                                    <button type="submit" class="btn"><i class="icon-check"></i> Sign in</button>
                                </form>
                            {/if}
                        {/if}
                    </div><!--/.nav-collapse -->
                </div>
            </div>
        </div>

        <div class="container">

            {if isset($username)}
                <div class="row">
                    <div class="span1"><img src="{$host}/photos/default.png" class="img-polaroid" /></div>
                    <div class="span3">
                        <h4>{$surname}, {$firstname} {$middlename}</h4>
                        <h5>- {$account_type}</h5>
                    </div>
                </div>
                <hr>
            {/if}
            
            {$alert}

            {include file=$content}

            <hr>

            <footer>
                <p class="pull-right">&copy; Student Online Clearance System 2012</p>
            </footer>

        </div> <!-- /container -->

        <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script>window.jQuery || document.write('<script src="{$host}/js/vendor/jquery-1.8.3.min.js"><\/script>')</script>

        <script src="{$host}/public/js/vendor/bootstrap.min.js"></script>

        <script src="{$host}/public/js/main.js"></script>

        {literal}
            <script>
                var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
                (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];
                g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
                s.parentNode.insertBefore(g,s)}(document,'script'));
            </script>
        {/literal}
    </body>
</html>
