for x in `ls`
do 
    filename1=`echo $x | awk -F. '{ print $1 }'`
    filename2=`echo $x | awk -F. '{ print $2 }'`
    
    mkdir $filename1 $filename2
    mv  $filename1 /c/Users/vishal/desktop/backup 
    mv  $filename2 /c/Users/vishal/desktop/backup/$filename1 
    mv  $x /c/Users/vishal/desktop/backup/$filename1/$filename2
done