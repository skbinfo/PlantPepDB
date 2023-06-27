awk -F"[><]" '{gsub(/\r/,"")} /^[ \t]+<div[ \t]+class="text-info">.*<\/div>/{print $3}' Input_file
