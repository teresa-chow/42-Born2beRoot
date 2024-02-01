#!/bin/bash

time=$(($(uptime -s | cut -d ':' -f 2 ) % 10 * 60 + $(uptime -s | cut -d ':' -f 3)))
sleep $time
