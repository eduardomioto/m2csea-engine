##
### Base
##
sudo apt-get update
sudo apt-get install -y \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual
sudo apt-get install -y --no-install-recommends \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
sudo apt-get -y install build-essential checkinstall
##
### Docker
##
sudo curl -fsSL https://apt.dockerproject.org/gpg | sudo apt-key add -
sudo add-apt-repository \
       "deb https://apt.dockerproject.org/repo/ \
       ubuntu-$(lsb_release -cs) \
       main"
sudo apt-get update
sudo apt-get -y install git
sudo apt-get -y install docker-engine
##
### Python and Pip
##
sudo apt-get -y install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev python
sudo apt-get -y install python-pip
sudo pip install docker-compose
##
### Java
##
sudo wget --no-cookies --no-check-certificate \
    --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u144-b01/090f390dda5b47b9b721c7dfaa008135/jdk-8u144-linux-x64.tar.gz"
sudo mkdir /usr/local/java
sudo mv jdk-8u144-linux-x64.tar.gz /usr/local/java/
cd /usr/local/java
sudo tar xvzf jdk-8u144-linux-x64.tar.gz
sudo export JAVA_HOME=/usr/local/java/jdk1.8.0_144
sudo export PATH=$JAVA_HOME/bin:$PATH
##
### Maven
##
sudo apt-get -y install maven