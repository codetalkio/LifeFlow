<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>{% SITE_TITLE %}</title>
    <link rel="stylesheet" type="text/css" media="screen, print, projection" href="{% STYLESHEET %}">
    <link rel="shortcut icon" type="image/x-icon" href="{% FAVICON %}">
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript" charset="utf-8"></script>
    <script src="{% JS_ROOT %}head.load.min.js" type="text/javascript" charset="utf-8"></script>
	<script>
    // Make sure jQuery is loaded, but we prefer from googles CDN
    !window.jQuery && document.write('<script src="{% JS_ROOT %}jquery-1.7.1.min.js"><\/script>');
    //{% AJAX %}
    </script>
</head>

<body>
    <div id="container">
        <header class="ajax-title">
            <img src="{% THEME_ROOT %}img/logo.png" alt="Life-flow" />
            <h1>Integrativ Energi &amp; PowerCoach · Terapi · Tankefeltterapi</h1>
        </header>
        
        <nav>
            <table id="menu" class="ajax-menu">
                <tr>
            <?php
                foreach(Pages::getMenu() as $menu){
                    print '<td><a ' . $menu['active'] . ' href="' . $menu['href'] . '">' . $menu['name'] . '</a></td>';
                }
            ?>
                </tr>
            </table>
        </nav>
        
        <div id="content">
            <div class="ajax-content">
                {% CONTENT %}
            </div>
            <img id="flower-image" src="{% THEME_ROOT %}img/blomst.png" alt="" />
        </div>
    </div>
    
    <footer>
        Life-flow v/ Birgitte Jensen · Ringdams Kobbel 10 · 7100 Vejle · Tlf. 50 48 11 30 · Lifeflow.tft@gmail.com
    </footer>
    {% GOOGLE_ANALYTICS %}
</body>
</html>