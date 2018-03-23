changebefore="xiangxw"
changeafter="xiaoyang"
result=`find .|xargs grep -ri $changebefore -l |grep -v changename`
for file in $result
do
    echo $file
    sed -i "s/$changebefore/$changeafter/g" $file
done
