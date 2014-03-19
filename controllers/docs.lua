local docs = {}

function docs.index(page)
	page.layout = "legend/inside"
	page:render('index',{show_brand=true})
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