#!/bin/bash

# Configurar alternativas para Java
sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-${java_version}/bin/java 1
sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk-${java_version}/bin/javac 1
sudo update-alternatives --config java

# Configurar JAVA_HOME
echo "JAVA_HOME=\"/usr/lib/jvm/jdk-${java_version}\"" | sudo tee -a /etc/environment
source /etc/environment
