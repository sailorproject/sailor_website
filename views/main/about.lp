
<section id="about" class="single-page scrollblock">
  <div class="container">
  	<h2>Features</h2>
	<p>Sailor is an MVC web framework completely written in Lua. Some advantages of Sailor in comparison with similar tools is the fact that it runs on many different environmentsm being compatible with multiple web servers such as Apache, Nginx and Xavante, databases and operational systems. A distinguishable feature is the fact that Sailor allows the developer to write the whole app in Lua if they want, the backend and also the frontend, using a Lua-to-Javascript virtual machine. </p>
	<p>For a complete list of features, please refer to the <a href='<%= page:make_url("docs") %>'>documentation</a>.


	<h2>FAQ</h2>

	<h3>What is the ultimate goal of Sailor?</h3>

Get Lua in the scene of web developments, through Sailor or not. We believe Lua is a better quality alternative to current popular languages used in web development such as PHP, Ruby, Python and Javascript. Lua should at least come to mind when discussing options. We intend to do that by fixing the single most important drawback of Lua, the small ecosystem, by providing more tools to enable fast and easy web development. This is why we support the use of LuaRocks, the Lua package manager.

<h3>What is the future goal of Sailor?</h3>

Have a solid and extensible product, allowing community members to upload & install their plugins and extensions, a fruitful community, and make the development of a web application in Sailor very easy and fast.

<h3>What is the very-near-future goal of Sailor?</h3>

Have a minimum viable product that is production ready, specially on its use within Nginx, release a version 1.0 and get users within the Lua community.

<h3>Why use Lua in web development?</h3>

<ul>
<li>
The Lua programming language is a high-quality programming language on its design and semantics. It is very concise, consistent and predictable. It is very readable. It has great mechanisms such as metatable and hybrid implementation of tables. It's a wonderful piece of well-maintained tech. It's really worth the time to read some of the papers about it and we believe it is a better alternative than other popular interpreted languages currently being frequently used for web developments
</li>
<li>
Performance. Lua is faster than other cousin languages of the same family. The JIT implementation of Lua is the fastest dynamic script language on several benchmarks, faster even than JS v8.
</li>
<li>
Good technology such as openresty. Openresty is a bundle of nginx modules. Nginx implementation uses LuaJIT, which is super fast, and it has this interesting thing which is dealing with asynchronous I/O internally. So you can write seemingly procedural code that will be non-blocking and the events will all be handled inside nginx. That means <strong>no callback hell</strong>.
</li>
<li>
I particularly find it a very pleasant language to work with and it ranks my top 1 in this "category" at the moment. People often underestimate the importance of this for work. This is specially good considering it's high quality tech. I used to find PHP more pleasant to work with than Java despite Java being a more well-put language, but sometimes this became awkward because it seemed like I didn't understand its drawbacks... Most of the time we don't need technical reasons to just enjoy a tool and it feels nice for me in the Lua world and like something I can defend technically. This also pushed me to keep learning more about programming language design, which is nice.
</li>
<li>
It's not new or weird to use Lua for web dev, despite what we think. Websites like taobao.com, which is something like the chinese ebay, which is world's 11th most visited website, according to alexa, uses Lua in critical chunks of their code base. Lua is top 1 on the west for game dev scripting, but it is used for web dev more extensively on china. Perhaps they really need the performance. Ever since the beginning of the development of Sailor I noticed that there are way more companies using Lua for web than I imagined, however, their tools are not always shared. Sailor comes as an open source alternative.
</li>
<li>
I'd go as far as to say it is the future of webdev, since it is just so easy, fun and fast. But that's my "big dream". We need more developers building tools in Lua for that first, let's see how that'll go! :)
</li>
<li>
Lua's community has bunchs of nice, helpful and incredibly smart people despite being small. It is a friendly environment that cares about people and I often appreciate the high level technical discussions that emerge at the Lua email list. If you'd like to build tools for development, it's an easy way to get the community's heart without being redundant and gain prominency on your career. Nobody needs another MVC PHP framework. But the Lua community does not have the same abundance of tools. So you can build whatever you want that Lua does not have many of and lots of people will be happy. Of course this is a drawback at the same time. This is discussed more in the next section. The point is that it might be better for your career to be a prominent member of the Lua community and build tools that will be relevant not only for the Lua people, but at a broader scale since Lua itself can be the positive differential between similar tools.
</li>
</ul>

<h3>Why not use Lua in web development?</h3>
<ul>
<li>
The small & scattered ecosystem will often force you to develop libraries from scratch. I'd say this is the single most important drawback. However, this is changing a lot with the recent improvements to LuaRocks and this is also what we aim to change with Sailor. So I'd say this is a good time to get started and get the community's love first and then build a product ;) Or you can do like Leaf, the person who develops MoonScript (a language that compiles to Lua like coffeescript to JS) and do both, he has a big indie game shop which he developed using the tools he made!
</li>
<li>
The community is small and you might not always find the help you look for. However, Lua is easy and clair enough for you not to need help all the time, though. And we are very nice helpful folks. :)
</li>
</ul>

<h3>Are there tools for web development in Lua other than Sailor?</h3>

Yes. You can find a review of multiple tools <a href="http://lua.space/webdev/the-best-lua-web-frameworks" target="_blank">here</a>.

<h3>What is Sailor's licence?</h3>

Sailor's code license is MIT. In summary, that means you can use it for whatever you want, on both open source and proprietary projects. You can even fork it, rename it to Potato and sell it, as long as you don't blame us if something explodes or pretend you were the one who wrote everything. Meaning that, the only things you cannot do are removing the license files or holding Sailor's team or its contributors accountable for any problems that might happen when using Sailor.

<h3>How do I use Sailor?</h3>
You can find a manual and a tutorial <a href="http://sailorproject.org/docs">here</a>. If you will have doubts, you can ask them at our <a href="https://groups.google.com/forum/#!forum/sailor-l" target="_blank">google group / email list</a>.

<h3>May I contribute to Sailor?</h3>
Yes, you will find a detailed guide on multiple ways to contribute <a href="https://github.com/sailorproject/sailor/blob/master/CONTRIBUTING.md" target="_blank">here</a>.

<h3>Do you have a code of conduct?</h3>
Yes, we are committed to making participation in this project a harassment-free experience for everyone. Please read and follow our Code of conduct <a href="https://github.com/sailorproject/sailor/blob/master/CODE_OF_CONDUCT.md" target="_blank">here</a>.

<h3>Is Sailor production ready?</h3>
We do not yet claim to be production ready, but there are reported <a href="https://github.com/sailorproject/production_uses" target="_blank">uses of Sailor on production</a> already. Sailor is being <a href="https://travis-ci.org/Etiene/sailor" target="_blank">automatically tested</a> on multiple builds and we aim the next release to be a 1.0 release very soon. You can begin using it on your next projects and, if bugs occur, please report them to us on our <a href="https://github.com/sailorproject/sailor" target="_blank">github repository</a>.

<h3>Where does the name Sailor come from?</h3>

It is a pun on the popular anime series <a href="https://en.wikipedia.org/wiki/Sailor_Moon" target="_blank">Sailor Moon</a>. When I first decided I was going to learn Lua, I told myself that if I ever made a project on it, it should be called Sailor, because Lua means Moon in Portuguese. This decision came up in a discussion with Hisham Muhammad in a bus to PUC-Rio on 2013.

    <h3>What was the initial motivation to build Sailor?</h3>
	<p>I’m a student at PUC-Rio, home of Lua programming language. For some reason, Lua has more recognition abroad, being used in very known softwares such as World of Warcraft, Angry Birds and MediaWiki, and is not a popular thing here. How is it possible that in the the very same university where researchers designed a programming language people don’t try to use it whenever possible? Maybe I’m being stubborn, but I firmly believe we should pay more attention to home-grown stuff, specially when it’s well designed open source. Everyone benefits from widening the use of Lua. If it’s used more often, improvements will be encouraged, the community will grow, it will be easier to find examples and support, PUC-Rio will have more recognition, its researchers will have more recognition, its students will have more recognition. And that includes me.</p>

	<p>Looking from another angle, here I am, at Lua’s nest. I studied Programming Language Semantics with Roberto Ierusalimschy himself, Formal Languages with Hisham Muhammad and Basic Software with Ana Lúcia de Moura. Let’s say I’m in the right place, in the right time and can get in contact with the right people so easily. It’s an opportunity to see what’s going on on first hand and I’d be so foolish if I didn’t learn something about it before I graduate or leave Rio de Janeiro.</p>
	
	<p>So I decided to go on an adventure and develop something real using Lua. My learning curve goes much faster this way. Also, most of my experience as a programmer resides in web development. To make my learning process even easier, why not unite both? And that’s how Sailor started. My adventure turned into a lunatic kamikaze thing as I was seeing Lua for the first time AND building a full MVC web framework at the same time, but it’s hella fun!</p>

	<p>Then interesting things happened, as I showed my code on Lua's mail list and reddit I got amazing feedback from wonderful people. I kept going, going and going. Sailor got contributors, it was accepted as a project on Google Summer of Code, it got more mature as a project, it started being used on production and I started giving talks about it. This has been crazy and amazing and I hope Sailor continues to evolve! </p>

	<p style="float:right">Etiene Dalcol.</p>
  </div>
  <!-- /.container -->
</section>

<!--******************** License  ********************-->
<section id="team" class="single-page scrollblock">
  <div class="container">
    <h2>License</h2>
    	<br/>
    	Copyright 2014-2015 Etiene Dalcol
    	<br/><br/>
		Permission is hereby granted, free of charge, to any person obtaining a copy
		of this software and associated documentation files (the "Software"), to deal
		in the Software without restriction, including without limitation the rights
		to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
		copies of the Software, and to permit persons to whom the Software is
		furnished to do so, subject to the following conditions:
		<br/><br/>
		The above copyright notice and this permission notice shall be included in all
		copies or substantial portions of the Software.
		<br/><br/>
		THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
		IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
		FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
		AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
		LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
		OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
		SOFTWARE.
  </div>
  <!-- /.container -->
</section>