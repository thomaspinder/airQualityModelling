BASEDIR=$(dirname "$0")
cwd=$(pwd)/$BASEDIR
echo "$cwd"

for f in $cwd/*.ipynb; do jupyter nbconvert --to python "$f"; done
pipreqs . --force
