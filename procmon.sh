#!/bin/bash

first_process=$(ps -eo user,command)

while true; do
  second_process=$(ps -eo user,command)
  diff <(echo "$first_process") <(echo "$second_process") | grep [\<\>] | grep -vE "procmon|kworker|command"
  first_process=$new_process

done
