git config --global user.name 'VaibhavN007'
git config --global user.email 'vaibhavnit007@gmail.com'

git remote rm origin
git remote add origin https://VaibhavN007:${GITHUB_API_KEY}@github.com/VaibhavN007/ann-benchmarks.git

git add *
git commit -m "First push from Travis CI"
git push -f origin deploy_glove
