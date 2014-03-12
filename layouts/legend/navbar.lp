<div class="navbar-wrapper">
  <div class="navbar navbar-inverse navbar-fixed-top">


    <div class="navbar-inner">

      <a href="https://github.com/Etiene/sailor"><img style="position: absolute; top: 0; left: 0; border: 0; z-index:0;" src="https://s3.amazonaws.com/github/ribbons/forkme_left_orange_ff7600.png" alt="Fork me on GitHub"></a>
  
      <div class="container">

        <!-- Responsive Navbar Part 1: Button for triggering responsive navbar (not covered in tutorial). Include responsive CSS to utilize. -->
        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse"> <span class="icon-bar">
        </span> <span class="icon-bar"></span> <span class="icon-bar"></span> </a>
        <? if show_brand then ?>
          <h1 class="brand"><a href="index.lua">Sailor</a></h1>
        <? end ?>
        <!-- Responsive Navbar Part 2: Place all navbar contents you want collapsed withing .navbar-collapse.collapse. -->
        <nav class="pull-right nav-collapse collapse">


          <ul id="menu-main" class="nav">

            <li><a title="Home" href=".">Home</a></li>
            <li><a title="About" href="?r=main/about">About</a></li>
            <li><a title="Download" href="https://github.com/Etiene/sailor/releases">Download</a></li>
            <li><a title="Documentation" href="?r=docs">Documentation</a></li>
          </ul>
        </nav>
      </div>
      <!-- /.container -->
    </div>
    <!-- /.navbar-inner -->
  </div>
  <!-- /.navbar -->
</div>
<!-- /.navbar-wrapper -->