local M = {}

function M.index(page)
	page.layout = "inside/index"
	page:render('index',{show_brand = true})
end

return M