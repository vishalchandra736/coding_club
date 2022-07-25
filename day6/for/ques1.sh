read -p "enter the any number  : " num
echo "Print power of 2 : "

for (( i=0; i<=$num; i++))
do
    echo $((2*$i))    
done