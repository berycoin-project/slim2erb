for x in $(find . -name \*.slim); do
  slimrb --rails -e  $x $(echo "$x" | sed 's/\.slim$/.erb/')
done

