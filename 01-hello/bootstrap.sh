#!/bin/sh

sh cleanup.sh

SKYNET_PATH="../../skynet"

cp $SKYNET_PATH/3rd/lua/lua .
cp $SKYNET_PATH/skynet .

cp -R $SKYNET_PATH/cservice .
cp -R $SKYNET_PATH/luaclib .
cp -R $SKYNET_PATH/lualib .

mkdir examples
cp $SKYNET_PATH/examples/agent.lua examples/
cp $SKYNET_PATH/examples/client.lua examples/
cp $SKYNET_PATH/examples/config examples/
cp $SKYNET_PATH/examples/config.path examples/
cp $SKYNET_PATH/examples/main.lua examples/
cp $SKYNET_PATH/examples/proto.lua examples/
cp $SKYNET_PATH/examples/protoloader.lua examples/
cp $SKYNET_PATH/examples/simpledb.lua examples/
cp $SKYNET_PATH/examples/watchdog.lua examples/

mkdir service
cp $SKYNET_PATH/service/bootstrap.lua service/
cp $SKYNET_PATH/service/cmaster.lua service/
cp $SKYNET_PATH/service/console.lua service/
cp $SKYNET_PATH/service/cslave.lua service/
cp $SKYNET_PATH/service/datacenterd.lua service/
cp $SKYNET_PATH/service/debug_console.lua service/
cp $SKYNET_PATH/service/gate.lua service/
cp $SKYNET_PATH/service/launcher.lua service/
cp $SKYNET_PATH/service/service_mgr.lua service/

