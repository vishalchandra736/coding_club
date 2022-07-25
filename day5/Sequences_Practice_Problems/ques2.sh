x=1 #lower_limit (not equal to 0)
y=6
range=$((y-x+1))
r=$(($(($RANDOM%$range))+x))
echo $r
