cd $HOME/m2csea-nodejs-sample-projects/
find . -maxdepth 1 -type d \( ! -name . \) -exec bash -c "cd '{}' && npm install" \;
rsync -avh --progress  $HOME/m2csea-nodejs-sample-projects/  $HOME/m2csea-engine/containers/applications/simulated/node
