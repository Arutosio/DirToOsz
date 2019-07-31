#!/bin/sh
#zip -r -j -9 zipped_dir.zip 20060\ Little\ Non\ -\ Hanamaru\ Sensation\ \(TV\ Size\)/*
#zip -r -j -9 ~/osuLazerBeatmap/20060\ Little\ Non\ -\ Hanamaru\ Sensation\ \(TV\ Size\).zip 20060\ Little\ Non\ -\ Hanamaru\ Sensation\ \(TV\ Size\)/*
#zip -r -j -9 ~/osuLazerBeatmap/20060\ Little\ Non\ -\ Hanamaru\ Sensation\ \(TV\ Size\).zip 20060\ Little\ Non\ -\ Hanamaru\ Sensation\ \(TV\ Size\)/*
#Check equality of a variable with a string value 
isOk=0;
count=0;
countFolder=0;
read -p "|| c$count-i$isOk-? --- Please write path to the directori beatmaps: " beatmapsPath_var;
mkdir ~/osuLazerBeatmap;
for dir in ~/Documents/CMDsh/*/ # list directories in the form "/tmp/dirname/"
do
    countFolder=$((countFolder+1))
    dir=${dir%*/}; #remove the trailing "/" #res: /home/arutosio/Documents/CMDsh/20060 Little Non - Hanamaru Sensation (TV Size)
    nameFolder=${dir##*/} #print everything after the final "/" #res: 20060 Little Non - Hanamaru Sensation (TV Size)
    echo "NumFolder: $countFolder  Creating... \"$nameFolder.osz\"";
    zip -r -j -9 ~/osuLazerBeatmap/"$nameFolder".zip "$dir"/*
    echo '------------------------------';
done
: '
while [ $isOk -lt 1 ]; do 
    read -p "|| c$count-i$isOk-? --- Please write path to the directori beatmaps: " beatmapsPath_var;
    if [ -d "~/Documents/CMDsh/*/" ]; then # Control will enter here if $DIRECTORY exists.

		count=$((count+1))
		echo "|| c$count-i$isOk-$choose_var --- This directory "$beatmapPath_var" is not a exisit, please try again.";
		echo;
	fi
	if [ $count -ge 4 ]; then
		echo "|| c$count-i$isOk-$choose_var --- Limit of tryed achieved($count), please run again the script";
	fi
done
'