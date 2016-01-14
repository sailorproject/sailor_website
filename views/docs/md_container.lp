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

	
<? if last_update then ?>
	<div style="float: right; padding-right:10px; margin-bottom: -8px">
	  <!--<small>Last updated ?= last_update ?></small> -->
	</div>
<? end ?>

<br/>
		<hr/>
		<div id="disqus_thread"></div>
		<script>
		/**
		* RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
		* LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables
		*/

		var disqus_config = function () {
		this.page.url = 'http://sailorproject.org/<%=page.GET.r%>'; // Replace PAGE_URL with your page's canonical URL variable
		this.page.identifier = '<%=page.GET.r%>'; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
		};
		(function() { // DON'T EDIT BELOW THIS LINE
		var d = document, s = d.createElement('script');

		s.src = '//sailorproject.disqus.com/embed.js';

		s.setAttribute('data-timestamp', +new Date());
		(d.head || d.body).appendChild(s);
		})();
		</script>
		<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript" rel="nofollow">comments powered by Disqus.</a></noscript>

  </div>
  <!-- /.container -->
</section>
<script id="dsq-count-scr" src="//sailorproject.disqus.com/count.js" async></script>
