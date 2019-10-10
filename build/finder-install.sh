cd $HOME/m2csea-finder
git pull
mvn clean install
rm $HOME/m2csea-engine/containers/applications/finder/*.jar
cp $HOME/m2csea-finder/target/finder-1.0.0.jar $HOME/m2csea-engine/containers/applications/finder
