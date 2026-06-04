local skynet = require "skynet"

skynet.start(function()
    skynet.newservice("cat")
    skynet.exit()
end)
