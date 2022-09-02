imgArr=(`ls ./new-files`)
imgcount=${#imgArr[*]}

k=0
for ((i=0;i<$imgcount;i=$i+9)); do
montage -mode concatenate -tile 3x -frame 5 ./new-files/${imgArr[$i]} ./new-files/${imgArr[$i+1]} ./new-files/${imgArr[$i+2]} ./new-files/${imgArr[$i+3]} ./new-files/${imgArr[$i + 4]} ./new-files/${imgArr[$i+5]} ./new-files/${imgArr[$i+6]} ./new-files/${imgArr[$i+7]} ./new-files/${imgArr[$i+8]} ... resultimage_$k.jpg
k=$(($k+1))
done