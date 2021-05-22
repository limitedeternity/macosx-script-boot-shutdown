#!/bin/bash

function shutdown() {

    networksetup -setairportpower Wi-Fi off
    exit 0
}

function startup() {

    networksetup -setairportpower Wi-Fi on
    tail -f /dev/null &
    wait $!
}

trap shutdown SIGTERM
trap shutdown SIGKILL

startup;

