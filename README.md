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
<br>
export path: <br>
export PATH=$PATH:path to play2.1.3 <br>
<br>
modify the shell file:<br>
alter path “cd/“ “spawm” in run.sh<br>
change prompt to the <project dir name><br>
change “appName” to the <project dir name> in project/Build.scala<br>
<br>
remove the following file:<br>
/path/to/your/play/home/repository/cache/org.slf4j<br>
/path/to/your/play/home/repository/local/org.slf4j<br>
/path/to/your/play/home/repository/.sbt.ivy.lock<br>
<br>
run:<br>
./run-server.sh<br>
<br>
================
2. ArchS2015-APITestSuite<br>
<br>
install build-dep and maven, java 7:<br>
sudo apt-get build-dep build-essential<br>
http://www.dangtrinh.com/2014/04/install-and-configure-java-and-maven-in.html	<br>
<br>
modify the file with adding your host name and port:<br>
APIHelper.java<br>
APISimulationV15.scala<br>
<br>
run:<br>
mvn test<br>
mvn gatling:execute -Dgatling.simulationClass=unit.APISimulationV15<br>
<br>
================
3.ArchS2015-FrameworkTest<br>
<br>
Pre-Requisites running on a local machine:<br>
<br>
Java 1.6+ (http://www.oracle.com/technetwork/java/javase/downloads)<br>
Play 2.2.x (http://www.playframework.com/download), recommend Play 2.2.3<br>
<br>
run:<br>
1. Install Play Framework. Instruction can be found at http://www.playframework.com/documentation/2.2.x/Installing<br>
2. Downlaod the source code from https://github.com/cmusv-sc/ArchF2013-Project3-FT<br>
3. From the parent folder, run the command: 'play run'<br>
4. Local App will available at localhost:9000<br>
5. For code coverage, run 'play jacoco:cover' and the report will be in ./target/jacoco<br>

