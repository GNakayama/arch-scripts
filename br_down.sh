max_brightness=$(cat /sys/class/backlight/intel_backlight/max_brightness)
brightness=$(cat /sys/class/backlight/intel_backlight/brightness)

if (($brightness > 0)); then
  let brightness=$brightness-$max_brightness/10
  echo $brightness > /sys/class/backlight/intel_backlight/brightness
fi
