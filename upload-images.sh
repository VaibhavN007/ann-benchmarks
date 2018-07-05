# git config --global user.name 'VaibhavN007'
# git config --global user.email 'vaibhavnit007@gmail.com'

# git remote rm origin
# git remote add origin https://VaibhavN007:${GITHUB_API_KEY}@github.com/VaibhavN007/ann-benchmarks.git

# git status
# git add .
# git status
# git commit -m "Travis build: $TRAVIS_BUILD_NUMBER"
# git status
# git push -f origin deploy_glove
# git status

# cd $HOME
# git clone https://VaibhavN007:{GITHUB_API_KEY}@github.com/VaibhavN007/ann-results
# ls
# cd ann-results/
# cp ../ann-benchmarks/*.html
# cp ../ann-benchmarks/*.png
# mkdir -p results
# cp -r ../ann-benchmarks/results/* ./results/
# git status
# git add .
# git commit -m "Travis build: $TRAVIS_BUILD_NUMBER"
# git status
# git push origin master
# git status



echo -e "Starting to upload results...\n"

#copy data we're interested in to other place
mkdir eval_results
cp *.html ./eval_results
cp *.png ./eval_results
cp -r results eval_results

cp -R eval_results $HOME/eval_results

#go to home and setup git
cd $HOME
git config --global user.name 'VaibhavN007'
git config --global user.email 'vaibhavnit007@gmail.com'

#using token clone the required branch
git clone --quiet https://VaibhavN007:${GH_TOKEN}@github.com/VaibhavN007/ann-results

#go into diractory and copy data we're interested in to that directory
cd ann-results
cp -Rf $HOME/eval_results/* .

#add, commit and push files
git add -f .
git commit -m "Travis build $TRAVIS_BUILD_NUMBER"
git push -fq origin master

echo -e "Done magic with results\n"