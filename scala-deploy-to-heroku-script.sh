# Deploy play project to heroku

# Put the branch name you would like to deploy here
BRANCH="master" 

git ls-remote --exit-code heroku
if test $? = 0; then
  heroku login
  git push heroku ${BRANCH}:master
else
  heroku login
  heroku create
  heroku addons:create heroku-postgresql:hobby-dev
  git push heroku development:master
fi
