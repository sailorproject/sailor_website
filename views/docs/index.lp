<? page:include("views/docs/_style") ?>
<section id="services" class="single-page scrollblock">
  <div class="container" style:"margin-top: -20px">
    <a name="overview" class="anchor">&nbsp;</a>
    <h2>Overview</h2>
    <? page:include("views/docs/_menu") ?>
    <div class="doc">
      <a name="dirtree" class="anchor">&nbsp;</a>
      <h3>Directory tree info</h3>
      <p>
      <code>/conf</code> - configuration files, open and edit them.<br/>
      <code>/controllers</code> - controllers you will make!<br/>
      <code>/layouts</code> - default layout files. </br>
      <code>/models</code> - models you will make!<br/>
      <code>/pub</code> - public files (js libraries, for example)<br/>
      <code>/runtime</code> - temporary files generated during runtime.<br/>
      <code>/views</code> - this is where your Lua pages in .lp will go.
      </p>
      <a name="installation" class="anchor">&nbsp;</a>
      <h3>Installation</h3>
      <p>
        Sailor has been tested under Linux, Mac OS X and Windows and is currently compatible with Apache with mod_lua or mod_pLua, Nginx with ngx_lua, or any CGI-enabled web server, like Civetweb or Mongoose, if CGILua is present.<br/>
      </p><p>
        If you are installing on Linux, <a href="?r=docs/install_linux">see this page</a>.<br/>
        If you are installing on Windows, see <a href="?r=docs/install_win">this page</a> instead.
      </p>
    <a name="configuration" class="anchor">&nbsp;</a>
    <h3>Configuration</h3>
    <? include_md('docs/CONFIG.md') ?>
    </div>
  </div>
  <!-- /.container -->
</section>
