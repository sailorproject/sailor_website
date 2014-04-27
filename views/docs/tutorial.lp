<? page:include("views/docs/_style") ?>
<section id="services" class="single-page scrollblock">
  <div class="container" style:"margin-top: -20px">
    <a name="overview" class="anchor">&nbsp;</a>
    <h2>Tutorial</h2>
    <? page:include("views/docs/_menu") ?>
    <div class="doc">
      <a name="first" class="anchor">&nbsp;</a>
      <h3>Developing your first application</h3>
      <p>After installing Sailor and generating your app, it's time to start developing! Sailor follows the MVC design pattern, so this basic tutorial will follow a typical but simplified workflow for this design. For details or advanced use of Sailor, please check the reference manual.

      <a name="controller" class="anchor">&nbsp;</a>
      <h3>Controllers</h3>
      <p>When you access a Sailor application, you will be routed to your page through a 'GET' variable to the right action in the right controller. If there is nothing to route, sailor will load the default action specified in your conf.lua. Supose the accessed url is <code>localhost/your_application/?r=main/index</code>. That means Sailor will try to find an action named 'index' inside a controller named 'main' on your application.
      <p>A controller is a .lua file inside <code>/controllers</code> on your app's directory tree named after your controller's name.  This is the basic structure of our <code>main.lua</code>:
      <pre>local main = {} --a table named after your controllers name<br><br>--[[Your actions are functions indexed by this table receiving the 'page' object. We will talk more about it later.]]<br>function main.index(page)
  page:render("index")
end<br><br>return main --don't forget to return your controller at the end of the file.</pre>
      <p>You can have multiple actions inside your controller, all of them receive the 'page' object which contains methods for interacting with your page. The first method we will learn is <code>page:render()</code>. For other methods of the page object, please consult the reference manual.

      <p> The render method has two parameters, a string with the view file to be rendered and a table with the vars that are being passed ahead. Sailor will look for your view file inside <code>/views/controller_name/file_name.lp</code>. So, a <code>page:render('index',{msg="Hello"})</code> executed from the main controller will run <code>/views/main/index.lp</code> and from that view you will have access to a var named 'msg' containing the string 'Hello' (and the page object, which is also passed ahead by default). If you have configured a layout or are using the default layout, Sailor will first render the layout and then render your view wrapped inside it, otherwise it will render your view directly. 

      <a name="views" class="anchor">&nbsp;</a>
      <h3>Views</h3>
      <p>Views are Lua Page files (.lp) contained inside your <code>/views</code>folder. They are valid HTML files in all aspects but you can also use <code>&lt;?lua &gt;</code> tags inside it to execute lua scripts. Let's create our <code>/views/main/index.lp</code>: 
      <pre>This is valid HTML! You can: &lt;br/&gt;
* Use regular HTML &lt;b&gt;tags&lt;/b&gt;. &lt;br/&gt;
* Run Javascript on your browser &lt;script&gt; alert("hi");&lt;/script&gt;&lt;br/&gt;
* Run Lua scripts from your server 
    &lt;?lua page:print(msg) 
    --[[ If this came from the controller we just created, this will print 'Hello']]
    ?&gt; &lt;br/&gt;
* Run Lua scripts on your browser or both on the server and your browser:
    &lt;?lua@both another_msg = 'Heya' ?&gt;
    &lt;?lua@server page:print(another_msg) ?&gt;
    &lt;?lua@client
      js.window.alert(another_msg)
    ?&gt; &lt;br/&gt;
    </pre>

    <a name="models" class="anchor">&nbsp;</a>
    <h3>Models</h3>
    <p>So you want to create models and save your objects on a database! Let's do that! So far we only give support to MySQL but it could work with any other driver LuaSQL gives support to. Don't forget to edit your <code>conf.lua</code> with your database details.</p>
    <p>On our example we will create an user model. We don't have much auto generation - for now - so you must create your tables manually.</p>
<pre>create table user(
  id int primary key auto_increment, 
  username varchar(20), 
  password varchar(32)
);</pre>
   <p>After you're done, you must create a Lua file under <code>/models</code> folder. Ours, will be called <code>user.lua</code>. This is an example model, you must start requiring our model library which contains basic object orientated db functions like save() or find(). We will declare user as a table, its contents will be its attribute rules list, its attributes and public methods. At the end of the file we return, instead of user, <code>model:new(user)</code>, that means it's turning your table into a model object and incorporating the common methods to it.</p>
<pre>
local model = require "sailor.model"
local user = {}

user.attributes = { -- Attributes and their validation rules
  --<attribute name> = { <validation func> = {<args>}, <validation func> = {<args>}...}
  id = {},
  username = { not_empty = {} },
  password = { not_empty = {}, len = {6,10} }
}

user.db = {
  key = 'id',
  table = 'user'
}

function user.test() return "test" end -- A public method

return model:new(user)
</pre>
    <p>It's important to notice that if you have an attribute named 'attributes', 'save', 'find' and so on, weird things might happen or you may lose access to them! You also can't create methods with the same name as your attributes, and if you create methods with the same name as upper model methods like 'validate', you'll overwrite them. Going back to a controller, a basic usage of our model example follows:
<pre>
local User = sailor.model("user") -- This will require your user module as a model

local u = User:new() -- instantiating User as u
local u2 = User:new() -- we can instantiate many other users

u.username = 'joao' -- we can fill our attributes
--[[ but we can't make up new ones, like u.yetanotherattribute = 42, they should be defined
     on our attribute list at user.lua ]]

local ok,err = u:validate() -- you can validate your models
page:write(tostring(err)) -- 'password' must not be empty

u.save() -- you can save or delete your from db
u.delete()

local some_user = User:find_by_id(1) -- or find existing rows
local another_user = User:find_by_attributes{name = 'joao'}
</pre>
    <p>A lot of this will go through rewriting and improvement for more features on next version, so stay tuned. For more details on validation functions and existing db methods, please consult the reference manual.</p>

    <p>This tutorial is under construction! Please be patient! =)</p>
  </div> 
  <!-- /.container -->
</section>
<div style="float: right; padding-right:10px; margin-bottom: -8px">
  <small>Last updated 27-April-2014 04:10 GMT-3</small>
</div>