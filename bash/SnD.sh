
for file in $SND_BASH/*
do
    if [ ${file:-4} == '.bash' ]; then
        source $file
    fi
done
