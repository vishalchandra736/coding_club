read -p "enter the first number : " a
read -p "enter the second number : " b
read -p "enter the third number : " c

w=$(($a+$b*$c))
x=$(($a%$b+$c))
y=$(($c+$a/$b))
z=$(($a*$b+$c))

max=$w
min=$z

if [ $max -lt $x ]
then
    max=$x
elif [ $max -lt $y ]
then 
    max=$y
else
    max=$z
fi
if [ $min -gt $w ]
then 
    min=$w
elif [ $min -gt $x ]
then
    min=$x
else
    min=$y
fi

echo "Max is $max and Min is $min"