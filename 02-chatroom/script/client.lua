package.cpath = "engine/luaclib/?.so"
package.path  = "engine/lualib/?.lua;script/lualib/?.lua"

if _VERSION ~= "Lua 5.4" then
    error "Use lua 5.4"
end

local socket = require "client.socket"
local proto  = require "proto"
local sproto = require "sproto"

