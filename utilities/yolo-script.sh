for d in */ ; do
  cd $d
  if [ -d ".git" ]; then
    echo "end of the day yolo commit"
    git add .
    git commit -m "yolo"
    git push origin master
  else 
    echo "no git in $d"
  fi
  cd ..
done
