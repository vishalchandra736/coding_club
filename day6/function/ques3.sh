echo "1. Write function check if number is Prime"
echo "2. Write function to get the Palindrome"
echo "3. Check if the Palindrome number is also prime"
read choice

function prime () {
    z=$1
    count=0
for (( i=1; i<=$z; i++ ))
do
    if [ `expr $z % $i` -eq 0 ]
    then 
        count=$(($count+1))
    fi
done
if [ $count -le 2 ]
then 
    echo "Number is prime"
else
    echo "Number is not prime"
fi
}

function palindrome () {
    x=0 
    y=0
    z=$1
    while (( $z > 0 ))
    do
        x=$(($z%10))
        y=$(($y*10+$x))
        z=$(($z/10))
    done

if [ $num -eq $y ]
then 
    echo "number is palindrome"
else 
    echo "number is not palindrome"
fi
}

function palindrome_with_prime () {
    x=0 
    y=0
    z=$1
    while (( $z > 0 ))
    do
        x=$(($z%10))
        y=$(($y*10+$x))
        z=$(($z/10))
    done

if [ $num -eq $y ]
then 
    echo "number is palindrome"
else 
    echo "number is not palindrome"
fi

a=$1
count=0
for (( i=1; i<=$a; i++ ))
do
    if [ `expr $a % $i` -eq 0 ]
    then 
        count=$(($count+1))
    fi
done
if [ $count -le 2 ]
then 
    echo "Number is prime"
else
    echo "Number is not prime"
fi

}


if [ $choice -eq 1 ]
then
    read -p "enter a number to check prime : " num
    prime $num
elif [ $choice -eq 2 ]
then 
    read -p "enter a number to check palindrome : " num
    palindrome $num
elif [ $choice -eq 3 ]
then 
    read -p "enter a number to check palindrome and prime : " num
    palindrome_with_prime $num
else
    echo "Choose the corret option"
fi