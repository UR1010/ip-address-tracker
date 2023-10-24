#!/usr/bin/env bash

flags="
    --language=c++ \
    --std=c++20 \
    --enable=all \
    --report-progress \
    --suppress=missingIncludeSystem"

platforms="
    unix32 \
    unix64 \
    win32A \
    win32W \
    win64"

declare -a colors=(
    "\e[1;32m" # green
    "\e[0m"    # reset
)

for platform in ${platforms}
do
    echo -e "\e[${colors[0]}Checking for \"$platform\"${colors[1]}:"
    cppcheck --platform=$platform $flags $include_dir .
done
