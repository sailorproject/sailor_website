local main = {}

local mail = require "sailor.mail"

function main.index(page)
	if page.POST['your-email'] ~= nil and page.POST['your-email'] ~= '' then
	--	local file = io.open("/var/www/sailor-emails.txt", "a")
	--	file:write(page.POST['your-email'].."\r\n")
	--	file:close()
        mail.send_message("<dalcol@etiene.net>","Yay! Somebody is interested!","This is the email: "..page.POST['your-email'])
    end
    page:render('index')
end

function main.about(page)
	page.layout = "legend/inside"
	page:render("about",{show_brand=true})
end

function main.donate(page)
	page.layout = "legend/inside"
	page:render("donate",{show_brand=true})
end
return main
