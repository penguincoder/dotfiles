#!/bin/bash

for i in 0 1 2 3 4 5 6 7 ; do
  echo -n "cpu${i} " && cat /sys/devices/system/cpu/cpu${i}/cpufreq/scaling_cur_freq
done
