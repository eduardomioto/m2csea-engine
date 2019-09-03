cd $HOME/m2csea-visualizer
git pull
npm install
rsync -avh --progress $HOME/m2csea-visualizer  $HOME/m2csea-engine/containers/applications/visualizer/
