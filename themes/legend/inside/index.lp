<!-- This theme was based on http://www.dzyngiri.com/legend-free-responsive-one-page-template/ open source theme. Thank you! -->
<style>
	p { 
		text-align: justify;
	}
</style>
<!DOCCTYPE HTML>
    <html lang="en">
    <head>
    <meta charset="utf-8">
    <title><%=page.title%></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta property="og:image" content="http://sailorproject.org/pub/images/sailorlogo2.png" />

    <!-- Styles -->
    <link href="/themes/legend/css/bootstrap.css" rel="stylesheet">
    <link href="/themes/legend/css/style.css" rel="stylesheet">
    <link rel='stylesheet' id='prettyphoto-css'  href="/themes/legend/css/prettyPhoto.css" type='text/css' media='all'>
    <link href="/themes/legend/css/fontello.css" type="text/css" rel="stylesheet">
    <!--[if lt IE 7]>
            <link href="themes/legend/css/fontello-ie7.css" type="text/css" rel="stylesheet">  
        <![endif]-->
    <!-- Google Web fonts -->
    <link href='http://fonts.googleapis.com/css?family=Quattrocento:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Patua+One' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <style>
    body {
        padding-top: 60px; /* 60px to make the container go all the way to the bottom of the topbar */
    }
    </style>
    <link href="/themes/legend/css/bootstrap-responsive.css" rel="stylesheet">
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    <!-- JQuery -->
    <script type="text/javascript" src="/themes/legend/js/jquery.js"></script>
    <!-- Load ScrollTo -->
    <script type="text/javascript" src="/themes/legend/js/jquery.scrollTo-1.4.2-min.js"></script>
    <!-- Load LocalScroll -->
    <script type="text/javascript" src="/themes/legend/js/jquery.localscroll-1.2.7-min.js"></script>
    <!-- prettyPhoto Initialization -->
    <script type="text/javascript" charset="utf-8">
          $(document).ready(function(){
            $("a[rel^='prettyPhoto']").prettyPhoto();
          }); 
    </script>
    <meta name="description" content="We bring a powerful and light programming language to its full potential as the foundation of a fast and simple to use web development framework.
Sailor will be completely free to use and open source."/>
    </head>
    <body>
 
    <!--******************** NAVBAR ********************-->
    <?lua page:include('/themes/legend/navbar',{show_brand=show_brand}) ?>
    <!-- /.navbar-wrapper -->
    <div id="top">
      
    </div>
    <!--******************** Inside page ********************-->
    {{content}}
    <!--******************** Contact Section ********************-->

    <hr>

    <?lua page:include("/themes/legend/footer",{}) ?>
</body>
</html>


