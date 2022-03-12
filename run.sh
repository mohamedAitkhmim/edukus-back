#!/bin/bash
sudo rm -rf edukus-back/
echo "----->start cloning edukus"
sudo git clone -b prod --single-branch https://github.com/mohamedAitkhmim/edukus-back.git
echo "----->end cloning"
cd edukus-back/
echo "----->start compiling edukus"
sudo mvn clean install -Dmaven.test.skip=true
echo "----->end compiling edukus"
echo "----->start runing edukus"
sudo java -jar target/diabeto-0.0.1-SNAPSHOT.jar -Dspring-boot.run.profiles=localdb
