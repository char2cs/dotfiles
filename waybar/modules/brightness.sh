#!/bin/bash

set backlight_device $argv[1]

set action $argv[2]

set dvalue $argv[3]

echo Backlight device: $backlight_device Bumping: $action By: $dvalue

set current_value (cat $backlight_device)

if test $action = up

echo (math $current_value + $dvalue) > $backlight_device

else if test $action = down

echo (math $current_value - $dvalue) > $backlight_device

else

exit 2

end