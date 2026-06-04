local skynet = require "skynet"

skynet.start(function()
    skynet.error("server start!")
    skynet.error("server stop!")
    skynet.exit()
end)
