#! /bin/bash
# This script will create a server with the given port and run


# build go server in cmd/apiserver file

go1.20.11 build -o $PWD/cmd/api-server/api-server $PWD/cmd/api-server/main.go 

# check if apiserver process is on, if on, kill process before running server

if lsof -Pi :10001 -sTCP:LISTEN -t >/dev/null ; then
	kill -9 $(lsof -t -i:10001)
fi


cd cmd/api-server && ./api-server
