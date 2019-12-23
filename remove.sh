#!/bin/bash
SERVERS=`hcloud server list -o noheader -o columns=id`
for server in $SERVERS
do
  hcloud server delete $server
done
