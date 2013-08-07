# Usage
# .grepackages PATH

path=$1

for file in $(find ${path:=.} -name 'package.json' -type f); do
  match=`grep "\"node\"" $file`
  if [ "$match" != "" ]; then
    echo $match
  fi

done