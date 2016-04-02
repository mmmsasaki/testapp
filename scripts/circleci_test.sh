#!/bin/bash

cd client

# クライアント側のテスト
npm run build
npm test
RESULT=$?
if [ $RESULT -ne 0 ]; then
  echo "clientのテストが失敗しました。 RETURN_STATUS: $RESULT"
  exit $RESULT
fi

cd ../

# サーバー側のテスト
bundle exec rubocop -R
RETURN_CD=$?
if [ $RETURN_CD -ne 0 ]; then
  echo "rubocop が失敗しました。 RETURN_STATUS: $RETURN_CD"
  exit $RETURN_CD
fi

echo "rubocop done."
echo ""
echo "Running rspec."
echo ""

bundle exec rspec spec --format progress --color
RETURN_CD=$?
if [ $RETURN_CD -ne 0 ]; then
  echo "rspec が失敗しました。 RETURN_STATUS: $RETURN_CD"
  exit $RETURN_CD
fi

echo "テストが完了しました。"
