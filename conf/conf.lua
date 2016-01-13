local conf = {
	sailor = {
		app_name = 'Sailor! A Lua MVC Framework',
		default_static = nil, -- If defined, default page will be a rendered lp as defined. 
							  -- Example: 'maintenance' will render /views/maintenance.lp
		default_controller = 'main', 
		default_action = 'index',
		theme = 'legend',
		layout = 'index',
		route_parameter = 'r',
		friendly_urls = true 
	},
	db = {
		driver = 'mysql',
		host = '',
		user = '',
		pass = '',
		dbname = ''
	},
	smtp = {
		server = 'smtp.gmail.com',
		user = 'lua.sailorproject@gmail.com',
		pass = 	'',
		from = '<lua.sailorproject@gmail.com>'
	},
	debug = {
		inspect = false
	}
}

return conf
