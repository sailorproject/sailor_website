<? page:include("/views/docs/_style") ?>
<section id="services" class="single-page scrollblock">
  <div class="container" style:"margin-top: -20px">
    <a name="overview" class="anchor">&nbsp;</a>
    <? page:include("/views/docs/_menu",{version=version}) ?>
      <h2>Overview</h2>
      <div class="doc">
        <a name="dirtree" class="anchor">&nbsp;</a>
        <h3/>Features on version 0.5 (Pluto)</h3>
        <p></p>
        <ul class="features">
          <li>Compatible with Lua 5.1, Lua 5.2 and LuaJIT (Compatibility may depend on web server used. 5.3 compatibility not verified yet)</li>
          <li>Luarocks setup</li>
          <li>Runs over Apache2, NginX, Mongoose, Lighttpd, Xavante and Lwan web servers</li>
          <li>Using Windows, Mac or Linux systems</li>
          <li>Compatible with MySQL, PostgreSQL, SQLite and other databases supported by the luasql library</li>
          <li>MVC structure</li>
          <li>Parsing of Lua pages</li>
          <li>Routing</li>
          <li>Basic Object-relational mapping</li>
          <li>Validation</li>
          <li>App comes already shipped with Bootstrap</li>
          <li>Include, redirect</li>
          <li>Sessions, cookies</li>
          <li>Login module</li>
          <li>Easy deployment (unix only) -&gt; sailor_create "app name" /dir/to/app</li>
          <li>Form generation</li>
          <li>Lua at client (possible through a Lua=&gt;JS virtual machine deployed with the app)</li>
          <li>Friendly urls</li>
          <li>Inspect function for better debugging =&gt; similar to a var dump</li>
          <li>Custom 404 pages</li>
          <li>Relations</li>
          <li>Model generation (reading from DB)</li>
          <li>CRUD generation (reading from model)</li>
          <li>Theme and layout (now you can have multiple layouts inside a theme. e.g. 1-column and 2-column)</li>
          <li>Integration with Busted for unit and functional testing of your apps</li>
        </ul>

        <h3>Roadmap</h3>
        <p></p>
        <ul>
          <li>Improvements of Lua on the client side</li>
          <li>Integration with mod_lua's DB API and DB module refactor</li>
          <li>Improvements with the ORM</li>
        </ul>

        <h3>Directory tree info</h3>
        <p></p>
        <ul class="dir_tree">
          <li>/docs - this one is supposed to have documentation
          <li>/lua-to-js-vms - different Lua-&gt;Javascript virtual machines for use of Lua on the browser with Sailor
          <li>/rockspecs - Rockspec files for LuaRocks install
          <li>/src - Lua modules with nice stuff from sailor and other places.
          <li>/sailor - Sailor modules
          <li>/sailor/blank-app - blank Sailor web app, can be copy pasted as base for your own apps
          <li>/test - apps for testing and demonstration purposes
          <li>/docs - this one is supposed to have documentation
        </ul>

        <h3>Supported Environments</h3>
        <p class="sup">Sailor has been tested under Linux, Mac OS X and Windows and is currently compatible with the following webservers: Apache2 with mod_lua or mod_pLua, Nginx with ngx_lua, or any CGI-enabled web server, like Civetweb, Mongoose and Xavante, if CGILua is present. The most tested environments are Mac and Ubuntu using Apache2 or Xavante.</p>
      </div>
    </div>
  </div>
  <!-- /.container -->
</section>
<div style="float: right; padding-right:10px; margin-bottom: -8px">
  <small>Last updated 6-July-2015 16:17 GMT+1</small>
</div>
