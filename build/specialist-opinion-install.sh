cd $HOME/m2csea-specialist-opinion
git pull
mvn clean install
rm $HOME/m2csea-engine/containers/applications/specialist-opinion/*.jar
cp $HOME/m2csea-specialist-opinion/target/specialist-opinion-1.0.0.jar  $HOME/m2csea-engine/containers/applications/specialist-opinion/
