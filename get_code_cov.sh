#!/bin/bash
for filename in `find . | egrep '\.cpp'`;
do
  gcov-4.9 -n -o . $filename > /dev/null;
done
