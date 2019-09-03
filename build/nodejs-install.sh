cd $HOME/m2csea-nodejs-sample-projects/
find . -maxdepth 1 -type d \( ! -name . \) -exec bash -c "cd '{}' && npm install" \;
