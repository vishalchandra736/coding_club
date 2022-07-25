read -p "enter a number : " num
count=0
for (( i=1; i<=$num; i++ ))
do
    if [ `expr $num % $i` -eq 0 ]
    then 
        count=$(($count+1))
    fi
done
if [ $count -le 2 ]
then 
    echo "$num is prime number"
else
    echo "$num is not prime number"
fi