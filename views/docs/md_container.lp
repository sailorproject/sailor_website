<? page:include("/views/docs/_style") ?>
<section id="services" class="single-page scrollblock">
<div class="container" style:"margin-top: -20px">
<? page:include("/views/docs/_menu",{version=version}) ?>
<noscript>
	<div>
		<center>
			<small>Warning: Enabling JavaScript is required to see the syntax highlight of the code on this page</small>
		</center>
	</div>
</noscript>
 <div class="doc">
 <? 
 local md = require 'extensions.md'
 md.include_md(path) ?>
 </div>
</div>
<!-- /.container -->
</section>

	
<? if last_update then ?>
	<div style="float: right; padding-right:10px; margin-bottom: -8px">
	  <!--<small>Last updated ?= last_update ?></small> -->
	</div>
<? end ?>