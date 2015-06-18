<? page:include("views/docs/_style") ?>
<section id="services" class="single-page scrollblock">
  <div class="container" style:"margin-top: -20px">
    <a name="overview" class="anchor">&nbsp;</a>
    <? page:include("views/docs/_menu") ?>
    <h2>Reference Manual</h2>
    <div class="doc">
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
  </div> 
  <!-- /.container -->
</section>
<div style="float: right; padding-right:10px; margin-bottom: -8px">
  <small>Last updated 2-May-2015 00:41 GMT+1</small>
</div>