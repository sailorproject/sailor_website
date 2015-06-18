<? page:include("views/docs/_style") ?>
<section id="services" class="single-page scrollblock">
  <div class="container" style:"margin-top: -20px">
    <a name="overview" class="anchor">&nbsp;</a>
    <? page:include("views/docs/_menu") ?>
    <h2>Reference Manual</h2>
    <div class="doc">
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
  </div> 
  <!-- /.container -->
</section>
<div style="float: right; padding-right:10px; margin-bottom: -8px">
  <small>Last updated 2-May-2015 00:41 GMT+1</small>
</div>