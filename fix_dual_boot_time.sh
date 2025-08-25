#!/bin/bash

echo "Fix dual boot time issue by setting RTC to local time"

timedatectl set-local-rtc 1 --adjust-system-clock
timedatectl

echo
echo "✅ Done!"