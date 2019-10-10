cd $HOME/m2csea-architecture-probe
git pull
mvn clean install
rm $HOME/m2csea-engine/containers/applications/architecture-probe/*.jar
cp $HOME/m2csea-architecture-probe/target/architecture-probe-1.0.0.jar $HOME/m2csea-engine/containers/applications/architecture-probe


