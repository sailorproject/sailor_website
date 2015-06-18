<? page:include("views/docs/_style") ?>
<section id="services" class="single-page scrollblock">
  <div class="container" style:"margin-top: -20px">
    <a name="overview" class="anchor">&nbsp;</a>
    <? page:include("views/docs/_menu") ?>
    <h2>Reference Manual</h2>
    <div class="doc">
      <h3>The Page object</h3>
      <p>The <code>page</code> object is being passed around controllers and views (implicitly) and it encapsulates several methods and attributes that may vary upon webservers. It can be used inside the actions of a controller and inside views.</p>

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

      <h4>page:write( data )</h4>
      Writes a single string to the response body.
      <br/>* data: string
      <br/>Example 1: <code>page:write( "Hello world!")</code>
      
      <h4>page:print( data )</h4>
      [Apache2]: Sends one or more variables to the response body.
      <br/>[Other webservers]: Does the same as page:write does and writes a single string to the response body.
      <br/>* data: string
      <br/>Example 1: <code>page:print( "Hello world!")</code>
      <br/>Example 2 [Apache2]: <code>page:print( "Hello", " world", "!")</code>

      <h4>page:inspect( var )</h4>
      Will inspect a var and print the result on the bottom of the page. It can be toggled on/off by setting conf.debug.inspect to true/false. Very useful for seeing the contents of a table, for example.
      <br/>* var: any type that you want to be stringfied.
      <br/>Example 1: <code>page:inspect( page.POST )</code>

      <h4>page.POST</h4>
      * table: contains the POST data, empty table if there is no POST data.

      <h4>page.GET</h4>
      * table: contains the POST data, empty table if there is no POST data.

      <h4>page.title</h4>
      *string <i>writeable</i>: By default it is set to the same as conf.sailor.app_name, but you can modify it before rendering a page, for example.

      <h4>page.theme</h4> 
      * string <i>writeable</i>: Sailor comes bundled with a default theme, using Bootstrap. This is the name of a folder inside /themes folder. You can modify the default theme of your application by edditing conf.sailor.theme. You can modify the theme of just one page by setting page.theme to something else on the controller action before rendering your page. You can set it to nil for displaying no theme at all, like for serving a JSON, for example.

      <h4>page.layout</h4>
      * string <i>writeable</i>: Sailor default's theme only comes with one layout, main. This refers to a .lp file inside the theme folder. You can create multiple layouts inside one same theme, like 1-column and 2-columns, for example.  You can modify the default layout of your application by edditing conf.sailor.layout. You can modify the layout of just one page by setting page.layout to something else on the controller action before rendering your page.

      <h4>page.r</h4>
      * userdata: request_rec structure that varies according to the webserver, comes with built-in functions.
      <br/>[Apache2]: <a href="http://modlua.org/api/request" target="_blank"> The request_rec structure</a>.

  </div> 
  <!-- /.container -->
</section>
<div style="float: right; padding-right:10px; margin-bottom: -8px">
  <small>Last updated 2-May-2015 00:41 GMT+1</small>
</div>