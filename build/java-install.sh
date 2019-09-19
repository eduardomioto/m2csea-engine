cd $HOME/m2csea-java-sample-projects/
git pull

mvn clean install sonar:sonar  -Dsonar.host.url=http://localhost:9000 -Dsonar.login=acabd57e73d5c90b2970ceb792790df34993f59a

cd  /home/admin/m2csea-java-sample-projects/microservice-access-manager-rest/
mvn clean install sonar:sonar  -Dsonar.host.url=http://localhost:9000 -Dsonar.login=acabd57e73d5c90b2970ceb792790df34993f59a

cd /home/admin/m2csea-java-sample-projects/microservice-billing-rest/
mvn clean install sonar:sonar  -Dsonar.host.url=http://localhost:9000 -Dsonar.login=acabd57e73d5c90b2970ceb792790df34993f59a

cd  /home/admin/m2csea-java-sample-projects/microservice-delivery-rest/
mvn clean install sonar:sonar  -Dsonar.host.url=http://localhost:9000 -Dsonar.login=acabd57e73d5c90b2970ceb792790df34993f59a

cd /home/admin/m2csea-java-sample-projects/microservice-fare-rest/
mvn clean install sonar:sonar  -Dsonar.host.url=http://localhost:9000 -Dsonar.login=acabd57e73d5c90b2970ceb792790df34993f59a

cd /home/admin/m2csea-java-sample-projects/microservice-inventory-rest/
mvn clean install sonar:sonar  -Dsonar.host.url=http://localhost:9000 -Dsonar.login=acabd57e73d5c90b2970ceb792790df34993f59a

cd /home/admin/m2csea-java-sample-projects/microservice-order-rest/
mvn clean install sonar:sonar  -Dsonar.host.url=http://localhost:9000 -Dsonar.login=acabd57e73d5c90b2970ceb792790df34993f59a

cd /home/admin/m2csea-java-sample-projects/microservice-product-rest/
mvn clean install sonar:sonar  -Dsonar.host.url=http://localhost:9000 -Dsonar.login=acabd57e73d5c90b2970ceb792790df34993f59a

cd /home/admin/m2csea-java-sample-projects/microservice-user-manager-rest/
mvn clean install sonar:sonar  -Dsonar.host.url=http://localhost:9000 -Dsonar.login=acabd57e73d5c90b2970ceb792790df34993f59a

cd /home/admin/m2csea-java-sample-projects/microservice-basket-rest/
mvn clean install sonar:sonar  -Dsonar.host.url=http://localhost:9000 -Dsonar.login=acabd57e73d5c90b2970ceb792790df34993f59a

cd $HOME/m2csea-java-sample-projects/

mvn clean install

cp /home/admin/m2csea-java-sample-projects/microservice-access-manager-rest/target/microservice-access-manager-rest-1.0.0.jar $HOME/m2csea-engine/containers/applications/simulated/java/microservice-access-manager-rest/
cp /home/admin/m2csea-java-sample-projects/microservice-billing-rest/target/microservice-billing-rest-1.0.0.jar $HOME/m2csea-engine/containers/applications/simulated/java/microservice-billing-rest/
cp /home/admin/m2csea-java-sample-projects/microservice-delivery-rest/target/microservice-delivery-rest-1.0.0.jar $HOME/m2csea-engine/containers/applications/simulated/java/microservice-delivery-rest/
cp /home/admin/m2csea-java-sample-projects/microservice-fare-rest/target/microservice-fare-rest-1.0.0.jar $HOME/m2csea-engine/containers/applications/simulated/java/microservice-fare-rest/
cp /home/admin/m2csea-java-sample-projects/microservice-inventory-rest/target/microservice-inventory-rest-1.0.0.jar $HOME/m2csea-engine/containers/applications/simulated/java/microservice-inventory-rest/
cp /home/admin/m2csea-java-sample-projects/microservice-order-rest/target/microservice-order-rest-1.0.0.jar $HOME/m2csea-engine/containers/applications/simulated/java/microservice-order-rest/
cp /home/admin/m2csea-java-sample-projects/microservice-product-rest/target/microservice-product-rest-1.0.0.jar $HOME/m2csea-engine/containers/applications/simulated/java/microservice-product-rest/
cp /home/admin/m2csea-java-sample-projects/microservice-user-manager-rest/target/microservice-user-manager-rest-1.0.0.jar $HOME/m2csea-engine/containers/applications/simulated/java/microservice-user-manager-rest/
cp /home/admin/m2csea-java-sample-projects/microservice-basket-rest/target/microservice-basket-rest-1.0.0.jar $HOME/m2csea-engine/containers/applications/simulated/java/microservice-basket-rest/
