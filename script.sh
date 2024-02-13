for file in *
do
    val=`du "$file" `
    if [ `du -s "$file" | cut -f1` -eq 0 ]
    then
        echo `du "$file" `
        echo `rmdir "$file"`
    fi
done
