#!/bin/bash

function print_column() {
#  $3与$4代表输入记录中的第三列与第四列的内容
  awk '{print $3 "\t" $4}' marks.txt
}

function print_all_line_by_matching() {
#  /a/ 模式匹配字符串a
#  $0  代表整行
echo "print all-line -->"
    awk '/a/ {print $0}' marks.txt
    echo "print select column -->"
    awk '/a/ {print $3 "\t" $4}' marks.txt
}

function count_by_matching() {
    awk '/a/{++cnt} END {print "Count = ", cnt}' marks.txt
}

function print_by_length() {
    awk 'length($0) > 18' marks.txt
}


function main() {
    print_column
    print_all_line_by_matching
    count_by_matching
    print_by_length
}

main