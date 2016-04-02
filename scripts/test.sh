cd client

npm run build
npm test

RESULT=$?

if [ $RESULT -ne 0 ]; then
  echo "clientのテストが失敗しました。 RETURN_STATUS: $RESULT"
  exit $RESULT
fi

echo "テストが完了しました。"
cd ../
