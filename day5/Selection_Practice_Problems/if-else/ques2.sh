read -p "Enter the Date :"  date
read -p "Enter the Month :" month
if [ $month -ge 3  -a  $month -le 6 ]
then 
    if [ $month -ge 3 -a $date -ge 20 -o $month -le 6 -a $date -le 20 ]
    then 
        echo "true"
    else
        echo "flase"
    fi
else
    echo "flase"
fi