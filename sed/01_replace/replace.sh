#!/bin/bash

function replace_first_root() {
    sed 's/root/tankzhang/' test |grep tank
}

function replace_root_global() {
    sed 's/root/tankzhang/g' test |grep zhang
}

function main() {
    replace_first_root
    replace_root_global
}

main