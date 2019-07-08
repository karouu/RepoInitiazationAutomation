#!/usr/bin/env bash
# project initiation, build a new repo in github

# USAGE: repo-runner.sh  github_USERNAME REPO_NAME VISIBILITY  OUTDIR
# Example: repo-runner.sh  john hello_world  public  /path/to/repo

if [ $# -ne 4 ]; then
	echo "USAGE: repo-runner.sh  USERNAME  REPO_NAME  VISIBILITY  OUTDIR
Example: repo-runner.sh john hello_world public /path/to/repo"
	exit 1
fi

username=$1    	#github username
repo_name=$2 	  #name of the repo to be created
visibility=$3 	#public/private
outdir="$4/$2" 	#path to where to create local repo

#option to save username to avoid multiple entires
git config --global credential.https://github.com.username $username

echo "validating credentials with github api before creating remote repo"
curl -i -u $username https://api.github.com/user/repos -d '{"name":"'$repo_name'", "'$visibility'":"true"}'

mkdir $outdir && cd $outdir

echo "# $repo_name" >> README.md
echo "__pycache__
.idea
.pkl
*/__pycache__" >> .gitignore
git init
git add .gitignore
git add README.md
git commit -m  "first commit"
git remote add origin https://github.com/$username/$repo_name.git
echo "validating credentials before pushing to remote, consider caching creds to avoid multiple entries"
git push -u origin master
