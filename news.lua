return {
	{	title='ann-the-future-of-sailor-a-letter-to-sailor-and-lua-communities',
		long_title='Jan 15 2016 - Announcement: The future of Sailor, a letter to Sailor and Lua communities',
		md = true,
		body=[[
Hello everyone,

Happy new year!

As you may or may not know, it is my dream that Lua gains more scene on web developments, being it through Sailor or not. When I decided to create Sailor, I was still learning Lua and I was not thinking big, I created another tool only because there weren’t many around and it would take me long to understand the current tools to contribute to them (and I also believe that at the time lapis was moonscript only). While nobody would be interested in yet another MVC framework for PHP, I knew this wouldn’t be the case with Lua, it wouldn’t be very redundant and I would have fun creating something to learn. 

Two years have passed and this has been amazing! While developments have been slow (I cannot do as much as I’d wish on my free time while being a full time masters student), I can confidently say I never imagined Sailor would become what it is today and I never imagined my life would change so much because of it. It became way more solid during this time and it’s in fact usable for real world applications, having gained its first [productions uses](https://github.com/sailorproject/production_uses) on this last year. I would also not be able to continue my masters if it wasn’t for its participation on last [Google Summer of Code](http://google-opensource.blogspot.com.br/2015/12/google-summer-of-code-wrap-up-lablua.html). And it’s been an honor to present it in conferences such as [FISL](http://hemingway.softwarelivre.org/fisl15/high/41a/sala41a-high-201405081604.ogv), [Lua Workshop](https://www.youtube.com/watch?v=igkEr8dw9Lk), [.concat()](https://www.youtube.com/watch?feature=player_detailpage&v=bx1bVJZueFw#t=371), [code.talks](http://www.codetalks.de/2015/programm/web-development-with-lua-programming-language) and [Coding Serbia](https://www.youtube.com/watch?v=JGPvM-50bOk).

During this time, I also got more involved with the Lua community in ways I couldn’t imagine. I ended opening [lua.space](http://lua.space), I help manage the international [Lua facebook group](https://www.facebook.com/groups/lua.br/), in three weeks I’ll be at FOSDEM discussing the Lua community on a [panel](https://fosdem.org/2016/schedule/event/future_guile_lua/) with other wonderful people and, from mid february on, I’ll spend a whole month working full time improving [LuaRock](http://luarocks.org)’s website as a part of a school project. 

I only have great things to say and I’d like to give an immense thank you to the Lua community for the support it has been giving me on the development of Sailor since the [beginning](https://www.reddit.com/r/lua/comments/1uvssq/i_decided_to_learn_lua_by_writing_a_web_framework/cem79gd), even though it has always been a very simple tool. I’ve learned so much, I’ve grew so much. Special thanks go to: Hisham Muhammad, Ana Lúcia de Moura, Roberto Ierusalimschy, Pierre Chapuis, Paul Cuthbertson, Fabio Mascarenhas, Felipe Daragon, Daniel Gruno, Alexander Gladysh and Ignacio Burgueño. I apologise if I accidently forgot someone.

Sailor grew as well. And I have great news for you, marking the beginning of a new phase!

It is our great desire that one day Sailor becomes a professional tool and has adhesion not only in the Lua community but outside. We believe Lua is an amazing differential on itself. We’re trying to organize things better to enable an environment where this is possible. I have written [contribution guides](https://github.com/sailorproject/sailor/blob/master/CONTRIBUTING.md), added a [code of conduct](https://github.com/sailorproject/sailor/blob/master/CODE_OF_CONDUCT.md) and have moved Sailor’s repository from my personal profile to it’s own [organisation profile](https://github.com/sailorproject/) on Github. It is time now, to discuss the future of Sailor with you and prepare for a v1.0 release. Hopefully, many interesting discussions will spring during FOSDEM as well, this is why I created a [repository](https://github.com/sailorproject/design) only for brainstorming and documenting its design. 
Perhaps we could separate some of the ideas and I’ll apply them to [Rails Girls Summer of Code](http://railsgirlssummerofcode.org/guide/projects/). If accepted, that means fresh blood helping around, new features, and women being mentored into programming. 

Additionally, in the biggest announcement of this letter, I’d like to welcome [Fernando Paredes García](https://twitter.com/develCuy) on our team. Fernando @develCuy is a Lua developer from Lima, Perú, who’s a FOSS advocate and also a member of the Drupal community. He’s the maintainer of [The Ophal Project](http://ophal.org), a highly-scalable CMS and web platform in Lua which is already being used to run some high traffic websites. We have been discussing and decided that Sailor and Ophal will be joining forces. This means that in the near feature we will be working together to decide what is the best course for this, gradually make our modules interoperate, resolve license issues, have a single and stronger project and work together on future modifications. This merge procedure will also be discussed in the [design repository](https://github.com/sailorproject/design). I am very happy because Fernando and I share many values, we believe in the power of Lua and 4 hands work better than 2. Please welcome Fernando \*slow claps\*. 


Cheers,

Etiene]]

	},
	{ 
		title = 'new-release-0-5-pluto-contributor-call',
		long_title = 'Dec 02 2015 - New release! Version 0.5 (Pluto) and Call For Contributors!',
		body = [[
		Hello, everyone!
<br/>
I'm very happy to announce a new Sailor version is coming out today! <a href="https://github.com/Etiene/sailor/releases/tag/v0.5-alpha" target="_blank">Version 0.5 - Pluto</a>
<br/><br/>
<strong>What's new from Sailor v0.4 Chibi?</strong>
<br/>* More tests for Sailor itself and integration with Travis CI
<br/>* Transactions for some major databases (MySQL, PostgreSQL, SQLite3)
<br/>* Integration with multiple Lua->JS virtual machines for using Lua on the browser
<br/>* General improvements on using Lua on the browser
<br/>  * Requiring of Lua modules
<br/>  * Accessing JS functions and passing callbacks
<br/>  * Better DOM manipulation
<br/>  * Accessing JS libraries (e.g. JQuery) and using them from Lua
<br/>* Integration with internal OpenResty's MySQL DB API
<br/>* Simulated OpenResty environment on automated tests (Depends on OpenResty)
<br/>* Improvements on OpenResty compatibility
<br/>* Improvements on Lighttpd compatiblity
<br/>* Some bugfixes
<br/>For more details, please check the complete <a href="https://github.com/Etiene/sailor/blob/master/CHANGELOG.md" target="_blank">changelog</a>.
<br/>
<br/><strong>Roadmap</strong>
<br/>* A rework on friendly urls
<br/>* Have a way to easily integrate ready-to-go external sailor extensions / plugins
<br/>* Rework how Sailor deals with views, allowing to use templates other than Lua Pages
<br/>* Review the session manager
<br/>* Integration with mod_lua's DB API and DB module refactor
<br/>
<br/><strong>Call for contributors! <3 <3 <3 <3 </strong>
<br/>Would you like to participate in the future of Sailor or contribute to another Lua tool for web development? Sailor needs your help to make our next release a 1.0 release, we are now very close! :) It would be amazing if more people joined in! Please consider contributing with code, tests, documentation, translation or spreading the word. For more details, check the complete <a href="https://github.com/Etiene/sailor/blob/master/CONTRIBUTING.md" target="_blank">Contribution Guide</a>. 
<br/>
<br/><strong>Quick install example for Unix, using Xavante web server:</strong>
<pre>
luarocks install sailor
sailor create "my app" /var/www
cd /var/www/my_app
lua start-server.lua
</pre>
<br/>ATTENTION: If you are upgrading from previous versions you might have an issue with shared files during app creation. If it's the case, then you need to remove the current sailor version before installing the new one.
<br/>
<br/><strong>Supported Environments:</strong>
<br/>OS: Windows, Mac and Linux
<br/>Servers: Apache2 with mod_lua, Nginx distro OpenResty, Mongoose, Xavante, Lwan and Lighthttpd
<br/>Databases: MySQL, PostgreSQL, SQLite (databases supported by the luasql library) + OpenResty native MySQL API
<br/>
<br/>The license is MIT, Sailor is completely free software, use at will! Feedback is much appreciated. If you really like it you can consider making a <a href="http://sailorproject.org/?r=main/donate">donation</a>.
<br/>
<br/>If you need support, please contact me or send an email to the <a href="https://groups.google.com/forum/#!forum/sailor-l" target="_blank">mail list</a>.
<br/>
<br/>
<br/>Cheers!
<br/>-- Etiene

		]]

	},
	{
		title = 'sailor-goes-to-confs',
		long_title = 'Nov 25 2015 - Sailor on CodingSerbia (video), FOSDEM and Bulgaria Web Summit',
		body = [[
			Sailor was last presented on <a href="http://codingserbia.com/" target="_blank">CodingSerbia</a>! You may watch the video here: <a href="https://www.youtube.com/watch?v=JGPvM-50bOk" target="_blank">YouTube.</a>
			<br/>
			<br/>I'll be giving this same talk during <a href="http://bulgariawebsummit.com/" target="_blank">Bulgaria Web Summit</a>.
			If you want to chat about Sailor (and get free stickers) I'll be there and also at <a href="https://fosdem.org/2016/" target="_blank">FOSDEM</a>!
			I submitted this talk to FOSDEM as well, but the results were not disclosed yet. But I'll be there anyway because there will be a 
			Lua DevRoom, and it will be a very awesome community meet-up. You can find more information about this <a href="https://www.reddit.com/r/lua/comments/3r814o/lua_devroom_at_fosdem_2016_call_for_speakers/" target="_blank">here</a>.
			<br/><br/>
			--Etiene
		
		]]
	},

	{
		title = 'irc-channel',
		long_title = 'Aug 10 2015 - Sailor now has an IRC channel!',
		body = [[
			Due to a recent request, I decided to create an IRC channel for sailor on freenode: #lua-sailor
			<br/>If you need a client to connect to the chatroom you can use 
			<a href="http://webchat.freenode.net/?channels=lua,lua-sailor" target="_blank">freenode's web client</a>.
		]]
	},
	{
		title = 'new-release-version-0-4-chibi',
		long_title = 'Jul 6 2015 - New release! Version 0.4 (Chibi)',
		body = [[
			I am proud to announce a new release came out today: <a href="https://github.com/Etiene/sailor/releases" target="_blank">Version 0.4 (Chibi)</a>
			<br/>Sailor is an MVC web framework written in Lua compatible with Mac, Windows and Linux and runs over Apache with mod_lua, Openresty (Nginx), Mongoose, Lwan, Xavante or Lighttpd.<br/>
			<br/>What's new from Sailor v0.3 Jupiter?
			<br/>  * Integration with <a href="olivinelabs.com/busted/" target="_blank">Busted</a> to allow unit and functional testing of your apps.
			<br/>  * Bug fixes and general improvements<br/>
			<br/>What's next?
			<br/>  * Improvements on the usability of Lua at client side
		]]
	},

	{
		title = 'talks-on-web-development-in-Lua',
		long_title = 'Jun 30 2015 - Talks on web development in Lua',
		body = [[
			If you want to chat about Sailor, I'll be in two conferences giving a talk about web development in Lua and you'll be able to find me there:
			<br/><a href="http://www.codetalks.de/2015/programm/web-development-with-lua-programming-language">Code.talks</a>: 29th and 30th September - Hamburg, Germany
			<br/><a href="http://codingserbia.com/">Coding Serbia</a>: 8th and 9th October - Novi Sad, Serbia
		]]
	},

	{
		title = 'all-docs-on-markdown',
		long_title = 'Jun 16 2015 - All docs in markdown',
		body = [[
			In order to syncronize the docs of the website with the docs on the github repository, one of our contributors, Felipe Daragon, implemented a page.include_md method to Sailor's website and I've converted all docs from html to markdown. Now it will be easier to have everything up-to-date and easier to contribute to documentation too. Take a look: <a href="https://github.com/Etiene/sailor/tree/master/docs" target="_blank">Docs on github</a>.
		]]
	},

	{
		title = 'new-release-during-geecon-2015',
		long_title = 'May 15 2015 - New release during GeeCon 2015: v0.3 (Jupiter)',
		body = [[
			Today, during GeeCon 2015, I'm releasing a new version of Sailor! Version 0.3 Jupiter.
			<br/>What's new from Sailor v0.2 Mars?
			<br/>  * Friendly urls
			<br/>  * Inspect function for better debugging => similar to a var dump
			<br/>  * Custom 404 pages
			<br/>  * Runs over Lighttpd, Xavante and Lwan web servers
			<br/>  * Relations
			<br/>  * Model generation (reading from DB)
			<br/>  * CRUD generation (reading from model)
			<br/>  * Theme and layout (now you can have multiple layouts inside a theme. e.g. 1-column and 2-column)
			<br/>  * Bug fixes and general improvements
			<br/><br/> Check here for more info: <a href="https://github.com/Etiene/sailor/releases/tag/v0.3" target="_blank">Sailor v0.3 Jupiter on Github</a>
			<br/> You can also watch the presentation about web development in Lua made during GeeCon <a href="https://vimeo.com/131808602" target="_blank">here</a>.
		]]
	},

	{
		title = 'sailor-has-been-accepted-on-google-summer-of-code-2015',
		long_title = 'Apr 27 2015 - "Sailor: Web development in Lua" submitted to LabLua has been accepted for Google Summer of Code 2015',
		body = [[
				Great news! Sailor was accepted as a project for GSoC, that means I'll be able to dedicate my whole summer to it and cool things will pop out soon. Some of the modifications foreseen  for the program include the implementation of a test suite to make unit and functional tests on your Sailor application and improve the current Lua at client functioning, so it becomes easier to manipulate the DOM using Lua.
		]]
	}

}