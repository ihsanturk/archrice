br_path="/sys/class/backlight/intel_backlight/brightness"

if [ $1 -lt 1 ]; then
  value=1
elif [ $1 -gt 100 ];then
  value=100
else
  value=$1
fi

value=$((${value}*75))
sudo echo "${value}" > ${br_path}
