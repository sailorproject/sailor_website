local docs = {}
md = require "controllers.ext.md"

function docs.index(page)
	page.layout = "inside/index"
	page:render('index',{show_brand=true})
end

function docs.create(page)
	page.layout = "inside/index"
	page:render('create',{show_brand=true})
end

function docs.models(page)
	page.layout = "inside/index"
	page:render('models',{show_brand=true})
end

function docs.views(page)
	page.layout = "inside/index"
	page:render('views',{show_brand=true})
end

function docs.controllers(page)
	page.layout = "inside/index"
	page:render('controllers',{show_brand=true})
end

function docs.form(page)
	page.layout = "inside/index"
	page:render('form',{show_brand=true})
end

function docs.configure(page)
	page.layout = "inside/index"
	page:render('conf',{show_brand=true})
end

function docs.install(page)
	page.layout = "inside/index"
	page:render('install',{show_brand=true})
end

function docs.install_win(page)
	page.layout = "inside/index"
	page:render('install_win',{show_brand=true})
end
function docs.install_linux(page)
	page.layout = "inside/index"
	page:render('install_linux',{show_brand=true})
end
function docs.install_mac(page)
	page.layout = "inside/index"
	page:render('install_mac',{show_brand=true})
end
function docs.tutorial(page)
	page.layout = "inside/index"
	page:render('tutorial',{show_brand=true})
end
function docs.manual(page)
	page.layout = "inside/index"
	page:render('manual',{show_brand=true})
end
function docs.page(page)
	page.layout = "inside/index"
	page:render('page',{show_brand=true})
end
function docs.sailor(page)
	page.layout = "inside/index"
	page:render('sailor',{show_brand=true})
end
function docs.model(page)
	page.layout = "inside/index"
	page:render('model',{show_brand=true})
end
function docs.validation(page)
	page.layout = "inside/index"
	page:render('validation',{show_brand=true})
end
function docs.form(page)
	page.layout = "inside/index"
	page:render('form',{show_brand=true})
end
function docs.access(page)
	page.layout = "inside/index"
	page:render('access',{show_brand=true})
end
function docs.autogen(page)
	page.layout = "inside/index"
	page:render('autogen',{show_brand=true})
end
return docs