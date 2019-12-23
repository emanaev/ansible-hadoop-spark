#!/bin/bash

ansible-playbook --verbose \
  --ssh-common-args='-o StrictHostKeyChecking=no' \
  setup.yml -i hcloud.py
