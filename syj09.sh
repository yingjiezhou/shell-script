#!/usr/bin/expect -f
 set user yjzhou19
 set host rssh.rhic.bnl.gov
 set password gg202343
 set timeout -1

 spawn ssh -Y $user@$host
 #expect "*passphrase*"
 #send "$password\r"
 expect "*$*"
 send "ssh rcas6009\r"
 #send "rterm -i\r"
 expect "*password*"
 send "Zyj%biu19\r"
 interact
 expect eof
