<? page:include("views/docs/_style") ?>
<section id="services" class="single-page scrollblock">
  <div class="container" style:"margin-top: -20px">
    <a name="overview" class="anchor">&nbsp;</a>
    <? page:include("views/docs/_menu") ?>
    <h2>Reference Manual</h2>
    <div class="doc">
      <h3>Valua: the validation module</h3>
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
  </div> 
  <!-- /.container -->
</section>
<div style="float: right; padding-right:10px; margin-bottom: -8px">
  <small>Last updated 2-May-2015 00:41 GMT+1</small>
</div>