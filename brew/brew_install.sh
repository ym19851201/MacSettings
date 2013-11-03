brew update
cat brew_list.txt | while read line
do
  brew install ${line}
done
