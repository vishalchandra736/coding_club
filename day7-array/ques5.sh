lower=0
high=100
count=0
for (( i=$lower; i<=$high; i++ ))
do
    if [ `expr $i % 11` -eq 0 -a $i -ne 0 ]
    then 
        Array[$count]=$i
        count=$(($count+1))
    elif [ `expr $i % 100` -eq 0 -a $i -ne 0 ]
    then
        Array[$count]=$i
        count=$(($count+1))
    fi
done

echo "All the repeat number is : ${Array[@]}"