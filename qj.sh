#!/usr/bin/expect -f
 set user qujing
 set host 122.204.129.3
 set password qj12345678
 set timeout -1

 spawn ssh -Y $user@$host
 expect "*assword:*"
 send "$password\r"
 expect "*$*"
 send "tcsh\r"
 interact
 expect eof
