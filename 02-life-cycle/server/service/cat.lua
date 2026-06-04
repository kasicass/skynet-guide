local skynet = require "skynet.manager"

local function cat_main_loop()
    skynet.error("CAT: miao~ miao~")
    skynet.sleep(300) -- 3s
    skynet.error("CAT: bye~")
    skynet.abort()
end

skynet.start(function()
	skynet.fork(cat_main_loop)
end)
