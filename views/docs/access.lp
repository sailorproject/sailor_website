<? page:include("views/docs/_style") ?>
<section id="services" class="single-page scrollblock">
  <div class="container" style:"margin-top: -20px">
    <a name="overview" class="anchor">&nbsp;</a>
    <? page:include("views/docs/_menu") ?>
    <h2>Reference Manual</h2>
    <div class="doc">
      <h3>The access module</h3>
      The access module is useful if you want to have a login system and pages that are not visible to guests. It needs to be required from either the controller or view: <code>local access = require "sailor.access"</code>. If you want to use a User model, it must have the fields username, password and salt. Otherwise you need to set default login and password strings.

      <h4>access.default</h4>
      Default login string. If set, deactivates looking up for a User model.
      <br/>Example: <code> access.default = 'demo'</code>

      <h4>access.default_pass</h4>
      Default password string.
      <br/>Example: <code> access.password = 'IamGod'</code>

      <h4>access.is_guest()</h4>
      Verifies if there is session data and returns a boolean.
      <br/>Example 1: <code> if access.is_guest( ) return 404 end </code>

      <h4>access.login(username,password)</h4>
      Tries to login with the given username and password (raw). If using a User model, it will encrypt the given password string before making the comparison. Returns a boolean and an error string. 
      <br/>Example 1: <code>local ok, err = access.login('demo','IamNOTGod') -- false, Invalid username or password.</code>
      <br/>Example 2: <code>local ok, err = access.login('demo','IamGod') -- true, nil</code>

      <h4>access.logout()</h4>
      Logs user out and erases session.
      <br/>Example: <code>access.logout()</code>
  </div> 
  <!-- /.container -->
</section>
<div style="float: right; padding-right:10px; margin-bottom: -8px">
  <small>Last updated 2-May-2015 00:41 GMT+1</small>
</div>