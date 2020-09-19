#!/usr/bin/expect -f
 set user yjzhou19
 set host rssh.rhic.bnl.gov
 set password gg202343
 set timeout -1

 spawn ssh -Y $user@$host
 #expect "*passphrase*"
 #send "$password\r"
 expect "*$*"
 send "ssh rcas6013\r"
 expect "*password*"
 send "Zyj%biu19\r"
 expect "*~/>*"
 send "su - fuchuan\r"
 expect "*Password*"
 send "Fc097531)\r"
 expect "*~/>*"
 send "cd /star/u/yjzhou19/pp_npe\r"
 interact
 expect eof
