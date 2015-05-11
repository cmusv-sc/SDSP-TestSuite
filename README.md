Spring-2015-SAD-TEAM9
================

1. ArchS2015-APIFramework	(API framwork, run under play 2.1.3 ,scala 2.9.2, sbt 0.13.6)<br>
<br>
install command:<br>
<br>
wegt http://downloads.typesafe.com/play/2.1.3/play-2.1.3.zip<br>
sudo apt-get remove scala-library scala<br>
wget http://www.scala-lang.org/files/archive/scala-2.9.2.deb<br>
sudo apt-get update<br>
sudo apt-get install scala<br>
wget http://dl.bintray.com/sbt/debian/sbt-0.13.6.deb<br>
sudo dpkg -i sbt-0.13.6.deb <br>
sudo apt-get update<br>
sudo apt-get install sbt<br>

export path:
export PATH=$PATH:<path to play2.1.3>

modify the shell file:
alter path “cd/“ “spawm” in run.sh
change prompt to the <project dir name>
change “appName” to the <project dir name> in project/Build.scala

remove the following file:
/path/to/your/play/home/repository/cache/org.slf4j
/path/to/your/play/home/repository/local/org.slf4j
/path/to/your/play/home/repository/.sbt.ivy.lock

run:
./run-server.sh

================
2. ArchS2015-APITestSuite
install build-dep and maven, java 7:
sudo apt-get build-dep build-essential
http://www.dangtrinh.com/2014/04/install-and-configure-java-and-maven-in.html	

modify the file with adding your host name and port:
APIHelper.java
APISimulationV15.scala

run:
mvn test
mvn gatling:execute -Dgatling.simulationClass=unit.APISimulationV15

================
3.ArchS2015-FrameworkTest

Pre-Requisites running on a local machine:

Java 1.6+ (http://www.oracle.com/technetwork/java/javase/downloads)
Play 2.2.x (http://www.playframework.com/download), recommend Play 2.2.3

run:
1. Install Play Framework. Instruction can be found at http://www.playframework.com/documentation/2.2.x/Installing
2. Downlaod the source code from https://github.com/cmusv-sc/ArchF2013-Project3-FT
3. From the parent folder, run the command: 'play run'
4. Local App will available at localhost:9000
5. For code coverage, run 'play jacoco:cover' and the report will be in ./target/jacoco