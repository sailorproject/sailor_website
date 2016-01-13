<? page:include("/views/docs/_style") ?>
<section id="services" class="single-page scrollblock">
  <div class="container" style:"margin-top: -20px">
    <a name="overview" class="anchor">&nbsp;</a>
    <? page:include("/views/docs/_menu",{version=version}) ?>
    <h2>Overview</h2>
    <div class="doc">
      <a name="dirtree" class="anchor">&nbsp;</a>
      <h3/>Features on version 0.5 (Pluto)</h3>
      <br/>Compatible with Lua 5.1, Lua 5.2 and LuaJIT
      <br/>Luarocks setup
      <br/>Runs over Apache2, NginX, Mongoose, Lighttpd, Xavante and Lwan web servers
      <br/>Using Windows, Mac or Linux systems
      <br/>Compatible with MySQL, PostgreSQL, SQLite and other databases supported by the luasql library
      <br/>MVC structure
      <br/>Parsing of Lua pages
      <br/>Routing
      <br/>Basic Object-relational mapping
      <br/>Validation
      <br/>App comes already shipped with Bootstrap
      <br/>Include, redirect
      <br/>Sessions, cookies
      <br/>Login module
      <br/>Easy deployment (unix only) -> sailor_create "app name" /dir/to/app
      <br/>Form generation
      <br/>Lua at client (possible through a Lua=>JS virtual machine deployed with the app)
      <br/>Friendly urls
      <br/>Inspect function for better debugging => similar to a var dump
      <br/>Custom 404 pages
      <br/>Relations
      <br/>Model generation (reading from DB)
      <br/>CRUD generation (reading from model)
      <br/>Theme and layout (now you can have multiple layouts inside a theme. e.g. 1-column and 2-column)
      <br/>Integration with Busted for unit and functional testing of your apps
      <br/>
      <h3>Roadmap</h3>
      <br/>Improvements of Lua on the client side
      <br/>Integration with mod_lua's DB API and DB module refactor
      <br/>Improvements with the ORM
      <br/>
      <h3>Directory tree info</h3>
      <br/>
      /docs - this one is supposed to have documentation
      <br/>/lua-to-js-vms - different Lua->Javascript virtual machines for use of Lua on the browser with Sailor
      <br/>/rockspecs - Rockspec files for LuaRocks install
      <br/>/src - Lua modules with nice stuff from sailor and other places.
      <br/>/sailor - Sailor modules
      <br/>/sailor/blank-app - blank Sailor web app, can be copy pasted as base for your own apps
      <br/>/test - apps for testing and demonstration purposes
      /docs - this one is supposed to have documentation



      <h3>Supported Environments</h3>
      <br/>
      Sailor has been tested under Linux, Mac OS X and Windows and is currently compatible with the following webservers: Apache2 with mod_lua or mod_pLua, Nginx with ngx_lua, or any CGI-enabled web server, like Civetweb, Mongoose and Xavante, if CGILua is present. The most tested environments are Mac and Ubuntu using Apache2 or Xavante.
    </div>
  </div>
  <!-- /.container -->
</section>
<div style="float: right; padding-right:10px; margin-bottom: -8px">
  <small>Last updated 6-July-2015 16:17 GMT+1</small>
</div>
