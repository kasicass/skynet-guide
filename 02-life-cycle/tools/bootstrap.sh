#!/bin/sh
#
# ./skynet conf/game.conf        # start server
# ./lua script/client.lua        # start client

copy_files() {
    local files="$1"
    echo "$files" | while IFS= read -r file; do
        # skip empty line
        [ -z "$file" ] && continue

        DIRNAME="$(dirname "$file")"
        mkdir -p "$DIRNAME"
        cp "$SKYNET_PATH/$file" "$DIRNAME"
    done
}

sh tools/cleanup.sh


#
# copy binary: lua, skynet
#

SKYNET_PATH="../../skynet"
cp "$SKYNET_PATH/3rd/lua/lua" .
cp "$SKYNET_PATH/skynet" .


#
# copy others to [engine]
#

SKYNET_PATH="../../../skynet"
mkdir engine
cd engine

cp -R "$SKYNET_PATH/cservice" .


#
# [luaclib]
#

LUACLIB_FILES="luaclib/client.so
luaclib/skynet.so
luaclib/sproto.so
luaclib/lpeg.so"

copy_files "$LUACLIB_FILES"


#
# [lualib]
#

LUALIB_FILES="lualib/loader.lua
lualib/skynet.lua
lualib/skynet/require.lua
lualib/skynet/debug.lua
lualib/skynet/manager.lua
lualib/skynet/service.lua
lualib/skynet/harbor.lua
lualib/skynet/socket.lua
lualib/skynet/snax.lua
lualib/snax/interface.lua
lualib/snax/gateserver.lua
lualib/sproto.lua
lualib/sprotoloader.lua
lualib/sprotoparser.lua
lualib/http/httpd.lua
lualib/http/internal.lua
lualib/http/sockethelper.lua"

copy_files "$LUALIB_FILES"


#
# [service]
#

SERVICE_FILES="service/bootstrap.lua
service/cmaster.lua
service/console.lua
service/cslave.lua
service/datacenterd.lua
service/debug_console.lua
service/gate.lua
service/launcher.lua
service/service_mgr.lua"

copy_files "$SERVICE_FILES"


# #
# # [examples]
# #

# EXAMPLES_FILES="examples/config
# examples/config.path

# examples/agent.lua
# examples/main.lua
# examples/proto.lua
# examples/protoloader.lua
# examples/simpledb.lua
# examples/watchdog.lua

# examples/client.lua"

# copy_files "$EXAMPLES_FILES"

