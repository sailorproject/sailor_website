#### Creating Pages #
Go to /controllers and create your first controller! It should be a lua module. Name it whatever you want, our example is "site.lua". We will serve two pages, one accessible via 


    local site = {}
    local model = require "sailor.model"
    function site.index(page)
      local foo = 'Hello world'
      local User = model("user")
      local u = User:new()
      u.username = "etiene"
      u.password = "a_password"
      local valid, err = u:validate() -- validate() will check if your attributes follow the rules!
      if not valid then
        foo = "Boohoo :("
      end

      -- Warning: this is a tech preview and some methods of model class do not avoid SQL injections yet.
      page:render('index',{foo=foo,name=u.username}) -- This will render /views/site/index.lp and pass the variables 'foo' and 'name'
    end
    function site.notindex(page)
      page:write('<b>Hey you!</b>')
    end
    return site
