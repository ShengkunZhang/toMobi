IFS=$'\n'
echo '处理*.epub文件'
files=`find ./ -name "*.epub"`
for fileName in $files; do
    ./kindlegen -dont_append_source $fileName;
done

echo '处理*.html文件'
files=`find ./ -name "*.html"`
for fileName in $files; do
    ./kindlegen -dont_append_source $fileName;
done
