#!/bin/bash

# http://stackoverflow.com/questions/59895/can-a-bash-script-tell-what-directory-its-stored-in
SCRIPT_DIR_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

GCOV="gcov-4.9"

SOURCE_DIR="../qtquick-chart-travis"

for filename in `find $SOURCE_DIR | egrep '\.cpp'`;
do
    out_dirname=$(echo $filename | cut -d"/" -f3-)
    $GCOV -n -o $out_dirname $filename > /dev/null;
done