cd $HOME/m2csea-finder
git pull
mvn clean install
cp $HOME/m2csea-finder/target/finder-1.0.0.jar /home/admin/m2csea-engine/containers/applications/finder
