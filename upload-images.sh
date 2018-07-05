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