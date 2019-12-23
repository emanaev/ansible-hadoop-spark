#!/bin/bash

INST=cx21
hcloud server create --image=ubuntu-18.04 --name=main --type=$INST --ssh-key=emanaev@Eugenes-MacBook-Pro.local
hcloud server add-label main hadoop=master
for NAME in node-1 node-2 node-3
do
  hcloud server create --image=ubuntu-18.04 --name=$NAME --type=$INST --ssh-key=emanaev@Eugenes-MacBook-Pro.local
  hcloud server add-label $NAME hadoop=node
done
