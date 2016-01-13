local M = {}


function M.md(page)
	page.layout = "inside/index"
	page:render('md',{show_brand=true})
end

function M.one(page)
	page:render('one')
end

return M
