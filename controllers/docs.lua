local docs = {}

function docs.index(page)
	page.layout = "legend/inside"
	page:render('index',{show_brand=true})
end

return docs