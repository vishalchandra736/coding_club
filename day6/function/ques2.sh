read -p "enter a number : " num 

function palindromes () {
    x=0 
    y=0
    z=$1
    while (( $z > 0 ))
    do
        x=$(($z%10))
        y=$(($y*10+$x))
        z=$(($z/10))
    done
}

palindromes $num

if [ $num -eq $y ]
then 
    echo "number is palindrome"
else 
    echo "number is not palindrome"
fi


