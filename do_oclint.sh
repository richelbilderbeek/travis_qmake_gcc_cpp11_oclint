#!/bin/bash

# Clean main should work
./oclint-0.10.3/bin/oclint -o log_correct.txt -max-priority-1 0 -max-priority-2 0 -max-priority-3 0 main_correct.cpp -- -c > /dev/null
num_lines=`wc -l log_correct.txt | cut -d " " -f 1`

if [ $num_lines -eq 8 ]; 
then
  echo "Clean code indeed"
else
  echo "Incorrectly faulted clean code"
  exit 1
fi

# Dirty code should be detected
./oclint-0.10.3/bin/oclint -o log_incorrect.txt -max-priority-1 0 -max-priority-2 0 -max-priority-3 0 main_incorrect.cpp -- -c > /dev/null
num_lines=`wc -l log_incorrect.txt | cut -d " " -f 1`

if [ $num_lines -eq 8 ]; 
then
  echo "Incorrectly labeled dirty code correct"
  exit 1
else
  echo "Dirty code indeed"
fi
