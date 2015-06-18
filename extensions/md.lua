local M = {}

function M.include_md(path)
    local markdown = require "markdown"
    local f = assert (io.open (sailor.path.."/"..path, "rb"))
    local src = f:read("*all")
    f:close()
    src = markdown(src)
    sailor.r:write(src)
end

return M