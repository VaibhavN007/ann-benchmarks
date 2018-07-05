git config --global user.name 'VaibhavN007'
git config --global user.email 'vaibhavnit007@gmail.com'

git remote rm origin
git remote add origin https://VaibhavN007:${GITHUB_API_KEY}@github.com/VaibhavN007/ann-benchmarks.git

git status
git add .
git status
git commit -m "Travis build: $TRAVIS_BUILD_NUMBER"
git status
git push -f origin deploy_glove
git status

cd $HOME
git clone https://VaibhavN007:{GITHUB_API_KEY}@github.com/VaibhavN007/ann-results
ls
cd ann-results/
cp ../ann-benchmarks/*.html
cp ../ann-benchmarks/*.png
mkdir -p results
cp -r ../ann-benchmarks/results/* ./results/
git status
git add .
git commit -m "Travis build: $TRAVIS_BUILD_NUMBER"
git status
git push origin master
git status