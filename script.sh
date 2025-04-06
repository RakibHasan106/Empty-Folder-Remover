for file in *
do
    # Check if it's a directory
    if [ -d "$file" ]; then
        # Get the size of the folder in kilobytes
        folder_size=$(du -s "$file" | cut -f1)
        # Check if the size is less than 1024 KB (1 MB)
        if [ "$folder_size" -lt 1024 ]; then
            echo "Deleting folder: $file (Size: ${folder_size}KB)"
            rm -r "$file"
        fi
    fi
done
