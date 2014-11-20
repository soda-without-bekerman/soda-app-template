<!doctype html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>{% block title %}{% endblock %}</title>
  <meta name="apple-mobile-web-app-title" content="{{ apptitle }}" />
  <meta name="apple-mobile-web-app-capable" content="yes" />
  <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent" />
  <meta name="apple-touch-icon" content="apple-touch-icon.png" />

  <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1.0, maximum-scale=1.0" />
  <meta name="viewport" content="initial-scale=1.0,user-scalable=no,maximum-scale=1" media="(device-height: 568px)" />



  <link rel="stylesheet" href="css/reset.css">
  <link rel="stylesheet" href="css/font-awesome.css">
  <link rel="stylesheet" href="css/dc.css">
  <link rel="stylesheet" href="css/font-awesome.css">
  {# <link rel="stylesheet" href="css/timeline.css"> #}


  {% block css %}
  <link rel="stylesheet" href="css/app.css">
  <link rel="stylesheet" type="text/css" href="css/highlightjs.css" />
  {% endblock %}


</head>
<body>
  {% block inlinescripts %}
  <script src="js/zepto.js" type="text/javascript" ></script>
  <script src="js/underscore.js" type="text/javascript" ></script>
  <script src="js/backbone.js" type="text/javascript" ></script>
  <script src="js/app.js" type="text/javascript" ></script>

  {#
  <script src="js/highlight.js" type="text/javascript" ></script>
  <script>hljs.initHighlightingOnLoad();</script>
  #}

  {# графика #}
  {#
  <script type="text/javascript" src="js/d3.js"></script>
  <script type="text/javascript" src="js/crossfilter.js"></script>
  <script type="text/javascript" src="js/dc.js"></script>
  #}
  {% endblock %}

  {% block body %}



  {% endblock %}

</body>

