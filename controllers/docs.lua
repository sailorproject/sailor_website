local docs = {}
local lfs = require "lfs"
local current_version = '0.5'
local sailor = require 'sailor'
local function render_doc_md(page,file_name,last_update)
	local version = page.GET.v or current_version
	local path = 'docs/'..version..'/'..file_name..'.md'
    local f=io.open(sailor.path.."/"..path,"r")
    if f~=nil then 
		io.close(f)
		page.layout = "inside/index"
		page:render('md_container',{path=path,show_brand=true,last_update=last_update, version = version})
	else
		page:redirect('docs/notfound')
	end
end

function docs.index(page)
	page.layout = "inside/index"
	page:render('index',{show_brand=true})
end

function docs.create(page)
	render_doc_md(page,'create_app')
end

function docs.models(page)
	render_doc_md(page,'tutorial_models')
end

function docs.views(page)
	render_doc_md(page,'tutorial_views')
end

function docs.controllers(page)
	render_doc_md(page,'tutorial_controllers')
end

function docs.form(page)
	render_doc_md(page,'manual_form_module')
end

function docs.configure(page)
	render_doc_md(page,'CONFIG')
end

function docs.install(page)
	page.layout = "inside/index"
	page:render('install',{show_brand=true})
end

function docs.install_win(page)
	render_doc_md(page,'INSTALL_WIN')
end

function docs.install_linux(page)
	render_doc_md(page,'INSTALL_LINUX')
end

function docs.install_mac(page)
	render_doc_md(page,'INSTALL_MAC')
end

function docs.install_linux_arch(page)
	render_doc_md(page,'INSTALL_LINUX_ARCH')
end

function docs.tutorial(page)
	page.layout = "inside/index"
	version = page.GET.v or version
	page:render('tutorial',{show_brand=true})
end

function docs.page(page)
	render_doc_md(page,'manual_page_object')
end

function docs.sailor(page)
	render_doc_md(page,'manual_sailor_functions')
end

function docs.model(page)
	render_doc_md(page,'manual_model_module')
end

function docs.validation(page)
	render_doc_md(page,'manual_validation_module')
end

function docs.access(page)
	render_doc_md(page,'manual_access_module')
end

function docs.testing(page)
	render_doc_md(page,'tutorial_testing')
end

function docs.autogen(page)
	page.layout = "inside/index"
	version = page.GET.v or version
	page:render('autogen',{show_brand=true})
end
return docs