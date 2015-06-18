<style>
#headerwrap .notify a:hover, #headerwrap .notify a:active {
	background: #43413e !important;
}

#headerwrap .notify a{
        font-family: 'Patua One', cursive;
        color: #fff;
        width: 185px;
        height: 2.9em;
        font-size: 1.3125em; /* 21px */
        padding:0.5em;
        letter-spacing: 0.05em;
        text-decoration: none;
	margin: 0;
        border: 0;
        text-transform: none;
        background: #f0bf00 !important;
        border-radius: 3px;
        -moz-border-radius: 3px;
        -webkit-border-radius: 3px;
}

</style>
<div id="headerwrap">

  <header class="clearfix">
    <h1><span>Sailor!</span> A Lua MVC framework.</h1>
    <div class="container">
      <div class="row">
        <div class="span12">
        <? if page.POST['your-email'] ~= nil then ?>
            <h2>Thank you! We will notify you as soon as Sailor has a new release!</h2>
        <? else ?>
            <h2>Signup to our mail list to be updated on our releases</h2>
        <? end ?>
<br/>
<div class="notify">
      <a href="https://groups.google.com/forum/#!forum/sailor-l" >Notify me</a>
</div>        </div>
      </div>
    </div>
  </header>
</div>
<!--******************** Feature ********************-->
<div class="scrollblock">
  <section id="feature">
    <div class="container">
      <div class="row"> 
       <div class="span12">
          <article>
            <p>We bring a <a href="http://lua.org" target="_blank">powerful and light programming language</a> to its full potential as the foundation of a fast and simple to use <a href="https://github.com/Etiene/sailor" target ="_blank">web development framework</a>.</p>
              <p>Sailor is completely free to use and open source.</p>
          </article>
        </div>
        <!-- ./span12 -->
      </div>
      <!-- .row -->
    </div>
    <!-- ./container -->
  </section>
</div>
