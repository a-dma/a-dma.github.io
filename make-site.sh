#!/bin/bash

# Exit with nonzero exit code if anything fails
set -e

# Clone master
echo "Cloning master"

git clone -b master https://${GH_TOKEN}@github.com/a-dma/a-dma.github.io site

# Biuild the site
echo "Running Jekyll to build the site"

jekyll build -d site

pushd site

echo "Updating the repo"

# Make sure jekyll is not run
touch .nojekyll

# Delete this script for the built website
rm make-site.sh

# Create a .travis.yml file
cat <<EOF > .travis.yml
branches:
  only:
  - jekyll
EOF

git add -A

# Setup git user
git config user.name "Travis CI"
git config user.email "alessio@alessiodimauro.com"

echo "Committing and pushing"
git commit -a -m "Travis build number $TRAVIS_BUILD_NUMBER"
git push -q origin master 2>&1

popd

# Delete everything
rm -rf ./site

echo "All done"
