local site = {}
function site.doc(page)
	return page:redirect('docs')
end
return site