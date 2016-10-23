#!/bin/sh
consul agent -node=agent-web -data-dir=/tmp/consul -config-dir=/etc/consul.d &
/webapp
