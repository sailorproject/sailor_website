local docs = {}
md = require "controllers.ext.md"

function docs.index(page)
	page.layout = "legend/inside"
	page:render('index',{show_brand=true})
end
function docs.install_win(page)
	page.layout = "legend/inside"
	page:render('install_win',{show_brand=true})
end
function docs.install_linux(page)
	page.layout = "legend/inside"
	page:render('install_linux',{show_brand=true})
end
function docs.install_mac(page)
	page.layout = "legend/inside"
	page:render('install_mac',{show_brand=true})
end
function docs.tutorial(page)
	page.layout = "legend/inside"
	page:render('tutorial',{show_brand=true})
end
function docs.manual(page)
	page.layout = "legend/inside"
	page:render('manual',{show_brand=true})
end
return docs