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

      <br/><br/>
      <h3>Sailor built-in functions</h3>
      <h4>sailor.make_url( )</h4>
      <h4>sailor.model( )</h4>

      <br/>
      <br/>
      <h3>The model module</h3>
      <h4>model:new( )</h4>
      <h4>model:save( )</h4>
      <h4>model:find_by_id( )</h4>
      <h4>model:find_by_attributes( )</h4>
      <h4>model:find( )</h4>
      <h4>model:find_all( )</h4>
      <h4>model:delete( )</h4>
      <h4>model:validate( )</h4>
      <h4>model:get_post( )</h4>
      <h4>model.generate_model( )</h4>
      <h4>model.generate_CRUD( )</h4>

      

      <br/><br/>

      <h3>The form module</h3>
      <h4>form.text(model,attribute,html_options)</h4>
      <h4>form.textarea(model,attribute,html_options)</h4>
      <h4>form.file(model,attribute,html_options)</h4>
      <h4>form.dropdown(model,attribute,list,prompt,html_options)</h4>
      <h4>form.password(model,attribute,html_options)</h4>
      <h4>form.radio_list(model,attribute,list,default,layout,html_options)</h4>
      <h4>form.checkbox(model,attribute,label,checked,html_options)</h4>

      <br/><br/>

      <h3>The access module</h3>
      <h4>access.is_guest()</h4>
      <h4>access.login(username,password)</h4>
      <h4>access.logout()</h4>
      <h4>access.default</h4>
      <h4>access.default_pass</h4>

      <h3>The validation module</h3>
      <h4>valua:new()</h4>
      <br/>alnum() - Checks if string is alphanumeric.
      <br/>boolean() - Checks if value is a boolean.
      <br/>compare(another_value) - Checks if value is equal to another value.
      <br/>contains(substr) - Checks if a string contains a substring.
      <br/>date() or date(format) -
      Checks if a string is a valid date. Default format is UK (dd/mm/yyyy). Also checks for US and ISO formats.
      <br/>email() - Checks if a string is a valid email address.
      <br/>empty() - Checks if a value is empty.
      <br/>integer() - Checks if a number is an integer;
      <br/>in_list(list) - Checks if a value is inside an array.
      <br/>len(min,max) - Checks if a string's length is between min and max.
      <br/>match(pattern) - Checks if a string matches a given pattern.
      <br/>max(n) - Checks if a number is equal or less than n.
      <br/>min(n) - Checks if a number is equal or greater than n.
      <br/>not_empty() - Checks if a value is not empty.
      <br/>no_white() - Checks if a string contains no white spaces.
      <br/>number() - Checks if a value is a number.
      <br/>string() - Checks if a value is a string.
      <br/>type(t) - Checks if a value is of type t.

    <p>This manual is under construction! Please be patient! =)</p>
  </div> 
</div>
<div style="float: right; padding-right:10px; margin-bottom: -8px">
  <small>Last updated 7-February-2015 11:08 GMT+1</small>
</div>