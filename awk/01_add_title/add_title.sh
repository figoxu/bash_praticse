#!/bin/bash

function print_title() {
  awk 'BEGIN{printf "Sr No\tName\tSub\tMarks\n"} {print}' marks.txt
}

function print_title_by_awk_file() {
    awk -f add_title.awk marks.txt
}

function main() {
    print_title
    print_title_by_awk_file
}

main

