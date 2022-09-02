//TODO!!!! use scryfall api instead of search bar so you dont get the wrong cards... should be a quick fix too

Deps: imagemagick

Scrape Images:
node downloadFiles.js

Count total files:
ls | wc -l

Resize Images:
magick mogrify -resize 240x336 -quality 100 -path ./new-files ./files/*.png

Remove spaces from filename:
for file in *; do mv "$file" `echo $file | tr ' ' '_'` ; done

Combine into printable pages:
sh batchImages.sh
