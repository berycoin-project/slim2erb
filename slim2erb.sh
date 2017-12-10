for x in $(find . -name \*.slim); do
  slimrb --rails -e -p $x $(echo "$x" | sed 's/\.slim$/.erb/')
done
find . -name "*.slim" -type f -delete
