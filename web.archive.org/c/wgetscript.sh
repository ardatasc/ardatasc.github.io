

echo "Enter URLs of the photos you want to download, one per line."
echo "Type 'done' when you are finished."

while true; do
    read -p "URL: " url
    if [ "$url" == "done" ]; then
        break
    fi

    if [ -n "$url" ]; then
        wget "$url"
    else
        echo "URL cannot be empty. Please enter a valid URL or type 'done'."
    fi
done

echo "Download completed."
