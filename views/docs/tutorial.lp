<style>
  h3{font-weight:bold; font-size: 20px !important;}
  .anchor{ position: relative;top: -35px;}
  .post ul{
    list-style-type: none;
    padding: 2px;
    font-weight:none;   
  }
  .post li{
    margin-left: 25px;
  }
  .post{
    margin-left: 20px !important;
    float: left;
    width: 17em !important;
    margin-right: 0;
  }
  .doc{
    padding: 0 20px;
    width: 52em;
    float:right;
  }
  @media (max-width: 767px) {
    .doc{
      width: auto;
      padding: 0 10px;
    }
    .post{
      width: 19em !important;
    }
  }
</style>
<section id="services" class="single-page scrollblock">
  <div class="container" style:"margin-top: -20px">
    <a name="overview" class="anchor">&nbsp;</a>
    <h2>Tutorial</h2>


    <article class="post">
      <div class="inside">
        <ul style="margin-left: -20px">
          <li><a href="?r=docs" class="more-link">Overview</a>
            <ul>
              <li><a href="?r=docs#dirtree" class="more-link">Controller</a></li>
              <li><a href="?r=docs#linuxinstallation" class="more-link">Installation</a>
                <ul>
                  <li><a href="?r=docs#linuxinstallation" class="more-link">Linux</ax></li>
                  <li><a href="?r=docs#wininstallation" class="more-link">Windows</ax></li>
                  <li><a href="?r=docs#macinstallation" class="more-link">Mac</ax></li>
                </ul>
              </li>
              <li><a href="?r=docs#dep" class="more-link">Dependencies</a></li>
              <li><a href="?r=docs#configuration" class="more-link">Configuration</a>
            </ul>
          </li>
          <li><a href="?r=docs/tutorial" class="more-link">Tutorial</a>
            <ul>
                <li><a href="#first" class="more-link">Your first application</ax></li>
                <li><a href="#controller" class="more-link">Controller</a></li>
              </ul>
          </li>
          <li><a href="?r=docs/manual" class="more-link">Reference Manual</a></li>
        </ul>

      </div>
      <!-- /.inside -->
    </article>
    <div class="doc">
      <a name="first" class="anchor">&nbsp;</a>
      <h3>Developing your first application</h3>
      <p>After installing Sailor and generating your app, it's time to start developing! Sailor follows the MVC design pattern, so this basic tutorial will follow a typical but simplified workflow for this design. For details or advanced use of Sailor, please check the reference manual (coming soon).

      <a name="controller" class="anchor">&nbsp;</a>
      <h3>Controller</h3>
      <p>When you access a Sailor application, you will be routed to your page through a 'GET' variable to the right action in the right controller. If there is nothing to route, you will load the default action specified in your conf.lua. Supose the accessed url is <code>localhost/your_application/?r=main/index</code>. That means Sailor will try to find an action named 'index' inside a controller named 'main' on your application.
      <p>A controller is a .lua file inside <code>/controllers</code> on your app's directory tree named after your controller's name.  This is the basic structure of our main.lua:
      <pre>local main = {} --a table named after your controllers name<br><br>--[[Your actions are functions indexed by this table receiving the 'page' object. We will talk more about it later.]]<br>function main.index(page)
  page:render("index")
end<br><br>return main --don't forget to return your controller at the end of the file.</pre>
      <p>You can have multiple actions inside your controller, all of them receive the 'page' object which contains methods for interacting with your page. The first method we will learn is <code>page:render()</code>...soon! -- This manual is still under construction! Please be patient! =)
  </div> 
  <!-- /.container -->
</section>