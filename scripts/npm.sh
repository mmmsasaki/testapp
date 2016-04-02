if [ $1 == "install" ]; then
  cd ./client
  npm $1
  cd ../
else
  cd ./client
  npm run $1
  cd ../
fi
