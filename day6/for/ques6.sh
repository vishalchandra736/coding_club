read -p "enter as number : " num
for (( i=2; i*i<=$num; ))
do
    if [ `expr $num % $i` -eq 0 ]
    then 
        echo $i;
        num=$(($num/$i))
    else    
       i=$(($i+1))
    fi
done
echo $num