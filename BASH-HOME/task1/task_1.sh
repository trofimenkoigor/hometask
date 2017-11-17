clear
echo "Enter a salary"
read num
if [ $num -lt 5000 ]
then
	echo "no %"
elif [ $num -ge 30000 ]
then
        echo "20%"
elif [ $num -ge 5000 ]
then
	echo "10%"
fi
