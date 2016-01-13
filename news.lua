return {
	{ 
		title = 'new-release-0.5-pluto-contributor-call',
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
		title = 'new-release-version-0.4-chibi',
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