#!/bin/sh
if [ -e perlFirst.txt ]
then
	rm perlFirst.txt
fi
if [ -e perlSecond.txt ]
then
	rm perlSecond.txt
fi

echo "Which txt to check:"
read first
echo "Check with which txt:"
read second

echo "\n\n"
perl -ne 'print if not /^\s*$/' $first >> perlFirst.txt #remove space row
perl -ne 'print if not /^\s*$/' $second >> perlSecond.txt #remove space row

perl check.pl perlFirst.txt perlSecond.txt #exec perl

