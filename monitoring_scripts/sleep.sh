#!/bin/bash

sleep $(who -b | awk '{ split($4, time, ":"); print time[2]%10 }')m
