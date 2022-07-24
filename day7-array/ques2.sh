function sorting() {
    for (( i=0; i<${#Array[@]}; i++))
    do
         for (( j=$i; j<${#Array[@]}; j++))
         do
            if [ ${Array[$i]} -gt ${Array[$j]} ]
            then
                x=${Array[$i]}
                Array[$i]=${Array[$j]}
                Array[$j]=$x
            fi
         done
    done
    echo "After Sorting : ${Array[@]}"
    echo "Second Max no is : ${Array[$((${#Array[@]}-2))]}"
    echo "Second Min no is : ${Array[1]}"
}




x=100
y=999
range=$(($y-$x+1))
for (( i=0; i<10; i++ ))
do
    Array[$i]=$(($(($RANDOM%$range))+$x))
done
echo "All Array : ${Array[@]}"
sorting "${Array[@]}"