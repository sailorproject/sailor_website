<? page:include("views/docs/_style") ?>
<section id="services" class="single-page scrollblock">
  <div class="container" style:"margin-top: -20px">
    <a name="overview" class="anchor">&nbsp;</a>
    <h2>Reference Manual</h2>
    <? page:include("views/docs/_menu") ?>
    <div class="doc">
      <h3>The Page object</h3>
      <p>The <code>page</code> object is being passed around controllers and views (implicitly) and it encapsulates several methods that vary upon webservers and attributes.</p>

      <h4>page:render( filename<i>, parms</i> )</h4>
      Renders a view from a controller action, if there's a default layout configured, it will render the layout first and then render your view.
      <br/>* filename: string, filename without ".lp". The file must be inside /views/&lt;controller name&gt;
      <br/>* parms: [optional] table, vars being passed ahead (env).
      <br/>Example: <code>page:render( 'index', {msg = 'hello'} )</code>

      <h4>page:include( path<i>, parms</i> )</h4>
      Includes a .lp file from a .lp file
      <br/>* path: string, full file path
      <br/>* parms: [optional] table, vars being passed ahead (env).
      <br/>Example: <code>page:include( '/views/incs/_defaultmenu' )</code>

      <h4>page:redirect( route<i>, args</i> )</h4>
      Redirects to another action if the route string doesn't start with 'http://' or another address if it does.
      <br/>* route: string, &lt;controller name&gt;/&lt;action name&gt; or some website address.
      <br/>* args: [optional] table, vars being passed as get parameters (only for internal redirect).
      <br/>Example 1: <code>page:redirect( 'user/update', {id = 2} )</code>
      <br/>Example 2: <code>page:redirect( 'http://google.com' )</code>

      <h4>page:write(  )</h4>

      <h4>page:print(  )</h4>


      <h4>page.POST</h4>

      <h4>page.GET</h4>

      <h4>page.title</h4>

      <h4>page.layout</h4>

    <p>This manual is under construction! Please be patient! =)</p>
  </div> 
</div>
<div style="float: right; padding-right:10px; margin-bottom: -8px">
  <small>Last updated 29-March-2014 13:21 GMT-3</small>
</div>