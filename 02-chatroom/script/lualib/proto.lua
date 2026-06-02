local sprotoparser = require "sprotoparser"
local proto = {}

proto.c2s = sprotoparser.parse [[
.package {
    type 0 : integer
}

handshake 1 {
    response {
        msg 0 : string
    }
}
]]

return proto
