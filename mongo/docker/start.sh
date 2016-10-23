#!/bin/bash
consul agent -node=agent-mongo -data-dir=/tmp/consul -config-dir=/etc/consul.d &
mongod
