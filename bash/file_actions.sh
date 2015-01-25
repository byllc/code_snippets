
#removing underscores from filename
for f in *; do export name=`echo $f | awk '{gsub("_", " ")}1'`; mv "$f" "$name";  done

