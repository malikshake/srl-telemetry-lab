#!/bin/bash

HOST_IP=$(ip addr show eth0 | grep "inet\b" | awk '{print $2}' | cut -d/ -f1)

export HOST_IP

containerlab deploy -t st.clab.yml --reconfigure
