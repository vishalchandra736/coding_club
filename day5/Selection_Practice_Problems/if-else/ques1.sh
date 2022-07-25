x=100
y=999
range=$(($y-$x+1))
a=$(($(($RANDOM%$range))+$x))
b=$(($(($RANDOM%$range))+$x))
c=$(($(($RANDOM%$range))+$x))
d=$(($(($RANDOM%$range))+$x))
e=$(($(($RANDOM%$range))+$x))

echo $a $b $c $d $c

max=$a
min=$e
if [ $b -gt $max ]
then
    max=$b
fi
if [ $c -gt $max ]
then
    max=$c
fi
if [ $d -gt $max ]
then
    max=$d
fi
if [ $e -gt $max ]
then
    max=$e
fi
if [ $a -lt $min ]
then
    min=$a
fi
if [ $b -lt $min ]
then
    min=$b
fi
if [ $c -lt $min ]
then
    min=$c
fi
if [ $d -lt $min ]
then
    min=$d
fi

echo "the minimun is : $min and the maximum is : $max"