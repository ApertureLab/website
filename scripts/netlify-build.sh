echo "Downloading Cecil"
if [ -z $CECIL_VERSION ]; then
  curl -sSOL https://cecil.app/cecil.phar
else
  curl -sSOL https://cecil.app/download/$CECIL_VERSION/cecil.phar
fi
php cecil.phar --version

echo "Installing Bootsrap"
#npm install --prefix ./themes/comingsoon/static bootstrap@4.6.0
cd themes/comingsoon/static
npm install
cd ../../..

echo "Started Cecil build"
if [[ $CECIL_ENV != "production" ]]; then
  php cecil.phar build -vv --baseurl=$DEPLOY_PRIME_URL --drafts || { sleep 30; false; }
else
  php cecil.phar build -v --baseurl=$URL --optimize
fi

# build success? can deploy?
if [ $? = 0 ]; then echo "Finished Cecil build"; exit 0; fi

echo "Interrupted Cecil build"; exit 1
