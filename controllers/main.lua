local main = {}
local sailor = require "sailor"
--local mail = require "sailor.mail"

function main.index(page)
	--if page.POST['your-email'] ~= nil and page.POST['your-email'] ~= '' then
	--	local file = io.open("/var/www/sailor-emails.txt", "a")
	--	file:write(page.POST['your-email'].."\r\n")
	--	file:close()
       -- mail.send_message("<dalcol@etiene.net>","Yay! Somebody is interested!","This is the email: "..page.POST['your-email'])
   
   
	 --end
    page:render('index')
end

function main.about(page)
	page.theme = "legend/inside"
	page:render("about",{show_brand=true})
end

function main.news(page)
	page.theme = "legend/inside"
	local news = require "news"
	local text = ''
	for _,v in pairs(news) do
		local article =  "<h4><a href='"..page:make_url('main/news',{t=v.title}).."'>"..v.long_title .. "</a></h4>"
		text = text .. article
	end
	if page.GET.t then
		for _,v in pairs(news) do
			if v.title == page.GET.t then
				page.title = 'Sailor! '.. v.long_title
				text = "<h4><a href='"..page:make_url('main/news',{t=v.title}).."'>"..v.long_title .. "</a></h4><br/>" .. v.body
			end
		end
	end
	page:render("news",{show_brand=true, text = text})
end

function main.donate(page)
	page.theme = "legend/inside"
	page:render("donate",{show_brand=true})
end
return main
