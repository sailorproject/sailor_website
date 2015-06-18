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

      <br/><br/>
      <h3>Sailor built-in functions</h3>
      <br/>Can be used anywhere.

      <h4>sailor.make_url( route, params)</h4>
      Creates a url for an internal app route depending on friendly url configuration
      <br/>* route: string, controller/action or controller.
      <br/>* params: table, vars and values to be sent via GET.
      <br/>Example 1: <code>sailor.make_url( 'post/view', {id = 5, title = 'Manual'} )</code>

      <h4>sailor.model( model_name )</h4>
      Creates a sailor model that can be instantiated in objects with :new(). 
      <br/>* model_name: string, model's name. There must be a .lua file with the model's name under /model
      <br/>Example 1: <br/><code>-- In this case there must be a file inside /model called user.lua<br/>local User = sailor.model( 'user' ) <br/>local u = User:new( )</code>


      <br/>
      <br/>
      <h3>The model module</h3>
      <br/>Attention not to mistake ' . ' with ' : ' in Lua. ' : ' is a syntatic sugar when using Object-Orientated Programming, it means that the object itself will be sent as an argument to the function before the other arguments. Example: model.find_by_id( model, id ) = model:find_by_id( id ). To use these functions you will need first to generate the model through the built-in function sailor.model( ).

      <h4>model:new( )</h4>
      Returns an instantiated object based on a given model.
      <br/>Example 1: <br/><code>-- In this case there must be a file inside /model called user.lua<br/>local User = sailor.model( 'user' ) <br/>local u = User:new( )</code>

      <h4>model:save( )</h4>
      Persists the model to the database. If the object is a new object it will insert, otherwise it will update. Returns a boolean to indicate if the object was saved and a table containing validation errors.
      <br/>Example 1: <br/><code>-- In this case there must be a file inside /model called user.lua<br/>local User = sailor.model( 'user' ) <br/>local u = User:new( )<br/>-- And this model must have an attribute called name.
      <br/>u.name = 'Geronimo'<br/>local saved, err = u:save( )</code>

      <h4>model:find_by_id( id )</h4>
      (The alue passed will be escaped) Finds one object with the given id. Returns the object found or nil.
      * id: string or number. The id that will be compared to whatever attribute name that is set on your model as db.key.
      <br/>Example 1: <br/><code>-- In this case there must be a file inside /model called user.lua<br/>local User = sailor.model( 'user' ) 
      <br/>-- This will find the user with the id equal to 2.
      <br/>local u = User:find_by_id( 2 )</code>

      <h4>model:find_by_attributes( attributes )</h4>
      (The values inside the table will be escaped) Finds one object with the given attributes. Returns the object found or nil.
      <br/>* attributes: table. Contains the attributes and the values to be used in the query.
      <br/>Example 1: <br/><code>-- In this case there must be a file inside /model called user.lua<br/>local User = sailor.model( 'user' ) 
      <br/>-- This will find one user with the attribute name equal to Carolina and age equal to 42.
      <br/>local u = User:find_by_attributes( { name = 'Carolina', age = 42 } )</code>

      <h4>model:find( where_string )</h4>
      (NOT ESCAPED, DO NOT USE THIS FUNCTION UNLESS YOU WRITE THE WHERE_STRING YOURSELF) Finds an object based on the given part of the SQL query after the WHERE. Returns the object found or nil.
      <br/>* where_string: string that will go after 'WHERE' on your query.
      <br/>Example 1: <br/><code>-- In this case there must be a file inside /model called user.lua<br/>local User = sailor.model( 'user' ) 
      <br/>-- This will find the first user with age greater or equal than 42, ordered by descending order.
      <br/>local u = User:find( "age >= 42 ORDER BY age DESC" )</code>

      <h4>model:find_all( )</h4>
      (NOT ESCAPED, DO NOT USE THIS FUNCTION UNLESS YOU WRITE THE WHERE_STRING YOURSELF) Finds all objects based on the given part of the SQL query after the WHERE. Returns a table with the objects found or an empty table.
      <br/>* where_string: string that will go after 'WHERE' on your query.
      <br/>Example 1: <br/><code>-- In this case there must be a file inside /model called user.lua<br/>local User = sailor.model( 'user' ) 
      <br/>-- This will find all users with age greater or equal than 42, ordered by descending order.
      <br/>local u = User:find_all( "age >= 42 ORDER BY age DESC" )</code>

      <h4>model:delete( )</h4>
      Deletes the row corresponding to this object from the database.
      <br/>Example 1: <br/><code>-- In this case there must be a file inside /model called user.lua<br/>local User = sailor.model( 'user' ) 
      <br/>-- This will find the user with the id equal to 2.
      <br/>local u = User:find_by_id( 2 )
      <br/>-- This will delete this user from the db
      <br/>u:delete() </code>

      <h4>model:validate( )</h4>
      Verifies if object's attributes comply to specified rules on model. Returns a boolean to indicate if its valid or not and a table with validation errors.
      <br/>Example 1: <br/><code>-- In this case there must be a file inside /model called user.lua
      <br/>-- Let's suppose your model has an attribute called email with a validation rule saying it needs to be a valid email.
      <br/>local User = sailor.model( 'user' ) <br/>local u = User:new( )
      <br/>u.email = 'aaaaa'<br/>local valid, err = u:validate( ) -- false, {"email is not a valid email address."}
      <br/>u.email = 'aaa@aaa.com'<br/>local valid, err = u:validate( ) -- true, {}</code>


      <h4>model:get_post( POST )</h4>
      Will read through POST and search for information posted via sailor's form module and apply them to object. Works based on the fact that input names generated by the form module follow a certain format.
      <br/>* POST: table containing the post information. Usually page.POST.
       <br/>Example 1: <br/><code>-- In this case there must be a file inside /model called user.lua
      <br/>local User = sailor.model( 'user' ) <br/>local u = User:new( )
      <br/>u:get_post( page.POST )
      <br/>if u:save() then 
      <br/> --do something
      <br/>end</code>

      <h4>model.generate_model( table_name )</h4>
      This will need the model module to be required. Generates a model based on a given table. This function is used in the autogen module and will not autogenerate model's relations or attributes' rules. A file with the same name of the table will be created under /model.
      <br/>* table_name, the name of the table

      <h4>model.generate_CRUD( model_name )</h4>
      This will need the model module to be required. Generates a CRUD based on the given model, model must already exist. This function is used in the autogen module and will not correctly intepretate how plurals work in English so you might have to rename some things after the CRUD is created. 
      <br/>* model_name: string, the name of the model.
      <br/>Generated files are:
      <br/>/controller/model_name.lua
      <br/>/views/model_name/index.lp
      <br/>/views/model_name/create.lp
      <br/>/views/model_name/update.lp
      <br/>/views/model_name/view.lp
      

      

      <br/><br/>

      <h3>The form module</h3>
      <br/>This module will generate html to be used on forms that capture data for a model. It is handy and recommended. This module needs to be required on the view: <code>local form = require "sailor.form"</code>. Also please note that on views, <code>&lt;%= var %&gt;</code> is equal to <code>&lt;?lua page:print( var ) ?&gt;</code>.
      <h4>form.text(model,attribute,html_options)</h4>
      Generates a text field input.
      <br/>* model: object, an instantiated object from a model.
      <br/>* attribute: string, name of the attribute to which the value of this attribute will be sent to.
      <br/>* html_options: string, other things to be added inside the input tag.
      <br/>Example 1: <code>&lt;%= form.text(user, 'username', 'class="cute-form-input" width="300"') %&gt;</code>


      <h4>form.textarea(model,attribute,html_options)</h4>
      Generates a text area input.
      <br/>* model: object, an instantiated object from a model.
      <br/>* attribute: string, name of the attribute to which the value of this attribute will be sent to.
      <br/>* html_options: string, other things to be added inside the input tag.
      <br/>Example 1: <code>&lt;%= form.textarea(user, 'description', 'class="cute-form-input" width="300"') %&gt;</code>

      <h4>form.file(model,attribute,html_options)</h4>
      Generates a file input.
      <br/>* model: object, an instantiated object from a model.
      <br/>* attribute: string, name of the attribute to which the value of this attribute will be sent to.
      <br/>* html_options: string, other things to be added inside the input tag.
      <br/>Example 1: <code>&lt;%= form.file(user, 'profile_picture', 'class="cute-form-input" width="300"') %&gt;</code>

      <h4>form.dropdown(model,attribute,list,prompt,html_options)</h4>
      Generates a dropdown list.
      <br/>* model: object, an instantiated object from a model.
      <br/>* attribute: string, name of the attribute to which the value of this attribute will be sent to.
      <br/>* list: table, contains lists of options to be selected.
      <br/>* prompt: string, first option that contains a nil value.
      <br/>* html_options: string, other things to be added inside the select tag.
      <br/>Example 1: <br/><code>&lt;%= form.dropdown(<br/> user, <br/> 'newsletter', <br/> {weekly = 'Receive weekly', monthly = 'Receive Monthly'},<br/> 'Please select newsletter...',<br/> 'class="cute-form-input" width="300"') <br/>%&gt;</code>

      <h4>form.password(model,attribute,html_options)</h4>
       Generates a password input.
      <br/>* model: object, an instantiated object from a model.
      <br/>* attribute: string, name of the attribute to which the value of this attribute will be sent to.
      <br/>* html_options: string, other things to be added inside the input tag.
      <br/>Example 1: <code>&lt;%= form.password(user, 'password', 'class="cute-form-input" width="300"') %&gt;</code>

      <h4>form.radio_list(model,attribute,list,default,layout,html_options)</h4>
      Generates a set of radio buttons.
      <br/>* model: object, an instantiated object from a model.
      <br/>* attribute: string, name of the attribute to which the value of this attribute will be sent to.
      <br/>* list: table, contains lists of radios to be selected.
      <br/>* default: string or nil, which value should be selected by default.
      <br/>* layout: string or nil, 'vertical' or 'horizontal' (default when nil).
      <br/>* html_options: string, other things to be added inside the input tag.
      <br/>Example 1: <br/><code>&lt;%= form.radio_list(<br/> user, <br/> 'newsletter', <br/> {weekly = 'Receive weekly', monthly = 'Receive Monthly'},<br/> 'weekly',<br/>'vertical' ,<br/> 'class="cute-form-input" width="300"') <br/>%&gt;</code>

      <h4>form.checkbox(model,attribute,label,checked,html_options)</h4>
      Generates a checkbox.
      <br/>* model: object, an instantiated object from a model.
      <br/>* attribute: string, name of the attribute to which the value of this attribute will be sent to.
      <br/>* label: string or nil, text that will go next to the checkbox, defaults to attribute name when nil.
      <br/>* checked: boolean, whether or not the checkbox is checked by default.
      <br/>* html_options: string, other things to be added inside the input tag.
      <br/>Example 1: <br/><code>&lt;%= form.checkbox(<br/> user, <br/> 'likes_puppies', <br/> "Do you like puppies?",<br/> true,<br/> 'class="cute-checkbox"') <br/>%&gt;</code>

      <br/><br/>

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
      

      <h3>The validation module</h3>
      <br/>This is a module external to Sailor that is useful for setting validation rules to model attributes but it can also be used elsewhere. It needs to be required: <code>local valua = require "valua"</code>. It works in chains. First you need to create your validation object then you chain the validation functions you wish in the order you wish. If a test fails, it will break the chain. More info: <a href="https://github.com/Etiene/valua" target="_blank">Valua - validation for Lua</a>
      <h4>Examples</h4>
      Example 1 - Just create, chain and use:
      <br/><code>valua:new().type("string").len(3,5)("test string!") -- false, "should have 3-5 characters"</code>
      <br/>
      <br/>Example 2 - Create, chain and later use it multiple times:
      <br/><code>local reusable_validation = valua:new().type("string").len(3,5)
      <br/>reusable_validation("test string!") -- false, "should have 3-5 characters"
      <br/>reusable_validation("test!") -- true</code>
      <br/>
      <br/>Example 3 - On a model:
      <br/><code>local user.attributes = {
      <br/> { username = valua:new().not_empty().len(6,20) }
      <br/>}</code>


      <h4>Validation functions</h4>


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
  <small>Last updated 2-May-2015 00:41 GMT+1</small>
</div>