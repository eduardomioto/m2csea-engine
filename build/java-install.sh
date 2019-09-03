cd $HOME/m2csea-java-sample-projects/
git pull
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
