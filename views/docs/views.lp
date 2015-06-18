<? page:include("views/docs/_style") ?>
<section id="services" class="single-page scrollblock">
  <div class="container" style:"margin-top: -20px">
    <a name="overview" class="anchor">&nbsp;</a>
    <? page:include("views/docs/_menu") ?>
    <h2>Views</h2>
    <div class="doc">
      <p>Sailor's views are Lua Page files (.lp) contained inside your <code>/views</code>folder. They are valid HTML files in all aspects, except for the .lp extension and the fact that you can also use <code>&lt;?lua &gt;</code> tags inside it to execute lua scripts. 

      <p>Let's create our <code>/views/main/index.lp</code>: 
      <pre>This is valid HTML! You can: &lt;br/&gt;

* Use regular HTML &lt;b&gt;tags&lt;/b&gt;. &lt;br/&gt;

* Run Javascript on your browser &lt;script&gt; alert("hi");&lt;/script&gt;&lt;br/&gt;

* Run Lua scripts from your server 
    &lt;?lua 
      page:print(msg) 
    ?&gt; &lt;!--If this came from the controller we just created in the last section of our tutorial, this will print 'Hello'--&gt; 
    &lt;%= msg %&gt; &lt;!--This will do the same thing --&gt;
    &lt;br/&gt;

* Intercalate Lua code with HTML
  &lt;?lua
  for i=1,10 do ?&gt;
    This message will appear 10 times! This is number &lt;%= i %&gt;.
  &lt;?lua end ?&gt;

* Use the page object and all its functions, for example, page:include().
  &lt;?lua page:include("/path/to/my/.lp/file/without/extension") ?&gt;
  &lt;?lua page:include("views/docs/_menu") ?&gt;

* Run Lua scripts on your browser or both on the server and your browser:
    &lt;?lua@both another_msg = 'Heya' ?&gt;
    &lt;?lua@server page:print(another_msg) ?&gt;
    &lt;?lua@client
      js.window.alert(another_msg)
    ?&gt; &lt;br/&gt;
    </pre>


      </div>
  </div> 
  <!-- /.container -->
</section>
<div style="float: right; padding-right:10px; margin-bottom: -8px">
  <small>Last updated 2-May-2015 16:13 GMT+1</small>
</div>