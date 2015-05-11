#! /usr/bin/expect -f
#cd /home/hdbadm/workspace/cmu-sensor-network
#eval spawn {*}"/home/hdbadm/src/play-2.1.3/play"

cd /media/sf_share_vm/ArchF2013-Project2-FT-master
eval spawn {*}"/media/sf_share_vm/play-2.1.3/play"
set prompt "CMUSensorNetwork"
expect "$prompt"
#interact -o -nobuffer -re $prompt return
send "run 8080\r"
interact
