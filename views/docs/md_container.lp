<? page:include("/views/docs/_style") ?>
<section id="services" class="single-page scrollblock">
<div class="container" style:"margin-top: -20px">
<? page:include("/views/docs/_menu") ?>
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
	  <small>Last updated <?= last_update ?></small>
	</div>
<? end ?>