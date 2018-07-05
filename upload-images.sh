git config --global user.name 'VaibhavN007'
git config --global user.email 'vaibhavnit007@gmail.com'

git remote rm origin
git remote add origin https://VaibhavN007:${GITHUB_API_KEY}@github.com/VaibhavN007/ann-benchmarks.git

git status
git add .
git status
git commit -m "Second push from Travis CI"
git status
git push -f origin deploy_glove
git status