#tut.by

exec 2> /dev/null
TIMEOUT=$(grep "timeout=" ./config.ini | grep -o "[0-9]*")

wget http://tut.by/ -O index.html

while true
do
	weather=$(grep '<span class="w-weather_temt">' index.html | grep -o "[+|-][0-9][0-9]*")
	echo "The weather in Minsk is "$weather
	sleep $TIMEOUT
done
