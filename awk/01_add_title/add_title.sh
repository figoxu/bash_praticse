#!/bin/bash

function print_title() {
  awk 'BEGIN{printf "Sr No\tName\tSub\tMarks\n"} {print}' marks.txt
}

function main() {
    print_title
}

main

