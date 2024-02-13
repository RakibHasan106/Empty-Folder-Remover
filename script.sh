for file in *
do
    val=`du "$file" `
    if [ `du -s "$file" | cut -f1` -eq 0 ]
    then
        echo `rmdir "$file"`
        echo `du "$file" `
    fi
done
