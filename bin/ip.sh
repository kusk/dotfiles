#!/bin/sh
ifconfig | grep "inet 10" | awk '{print $2}'
