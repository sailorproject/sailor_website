<? page:include("views/docs/_style") ?>
<section id="services" class="single-page scrollblock">
  <div class="container" style:"margin-top: -20px">
    <a name="overview" class="anchor">&nbsp;</a>
    <? page:include("views/docs/_menu") ?>
    <h2>Reference Manual</h2>
    <div class="doc">
      <h3>The Model Module</h3>
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
  </div> 
  <!-- /.container -->
</section>
<div style="float: right; padding-right:10px; margin-bottom: -8px">
  <small>Last updated 2-May-2015 00:41 GMT+1</small>
</div>