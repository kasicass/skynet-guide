local skynet = require "skynet"

skynet.start(function()
    skynet.error("Start timer!")
    for i = 1, 3 do
        skynet.sleep(300) -- 300 * 0.01s = 3s
        skynet.error("Hi timer!")
    end
    skynet.error("Exit timer!")
    skynet.abort()
end)
