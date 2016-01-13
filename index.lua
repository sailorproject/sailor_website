--package.path = package.path .. ';./src/lib/?.lua;'
--package.path =  ((debug.getinfo(1).source):match('^@?(.-)/index.lua$') or '')..'../sailor_framework/src/?.lua;'..package.path
local sailor = require "sailor"
sailor.launch()
