<? page:include("views/docs/_style") ?>
<section id="services" class="single-page scrollblock">
  <div class="container" style:"margin-top: -20px">
    <a name="overview" class="anchor">&nbsp;</a>
    <? page:include("views/docs/_menu") ?>
    <h2>Overview</h2>
    <div class="doc">
      <a name="dirtree" class="anchor">&nbsp;</a>
      <h3>Development progress</h3>
      <br/>
      So far I have integrated with @mascarenhas's Lua Pages as a nice templater for views, we also have controllers, a mailer module, routes, basic models, db connection, a validation module, integration with lua51.js so we can use Lua at client-side, basic form generation, sessions, basic authentication, auto generation for models and CRUDs and some other stuff. We are now working on researching, refactoring, and making documentation for releasing a version 0.3. After that is done the roadmap is rewriting the DB module for benefiting from mod_lua's API, improving the autogen and the form features.
      <br/><br/>

      <h3>Directory tree info</h3>
      <br/>
      
      /docs - this one is supposed to have documentation
      <br/>/src - Lua modules with nice stuff from sailor and other places.
      <br/>/sailor - Sailor modules
      <br/>/sailor/demo-app - blank Sailor web app, can be copy pasted as base for your own apps
      <br/>/test - apps for testing and demonstration purposes
      
      <h3>Supported Environments</h3>
      <br/>
      Sailor has been tested under Linux, Mac OS X and Windows and is currently compatible with the following webservers: Apache2 with mod_lua or mod_pLua, Nginx with ngx_lua, or any CGI-enabled web server, like Civetweb, Mongoose and Xavante, if CGILua is present. The most tested environments are Mac and Ubuntu using Apache2 or Xavante.
    </div>
  </div>
  <!-- /.container -->
</section>
<div style="float: right; padding-right:10px; margin-bottom: -8px">
  <small>Last updated 18-February-2015 15:15 GMT+1</small>
</div>
