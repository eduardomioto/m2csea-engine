rm ~/mc2pd/containers/compose/finder/app/app.jar
echo '### Finder App.jar removed'
mvn clean install -f ~/mc2pd/finder/pom.xml
echo '### Finder builded'
mv ~/mc2pd/finder/target/finder-0.0.1-SNAPSHOT.jar ~/mc2pd/containers/compose/finder/app/app.jar
echo '### Finder App.jar created'