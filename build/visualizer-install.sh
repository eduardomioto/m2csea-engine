cd $HOME/m2csea-visualizer
git pull
npm install
sudo rm -R $HOME/m2csea-engine/containers/volumes/visualizer/
sudo cp -R $HOME/m2csea-visualizer/static/  $HOME/m2csea-engine/containers/volumes/visualizer/
sudo chmod -R 777 $HOME/m2csea-engine/containers/volumes/visualizer/
