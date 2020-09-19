#!/usr/bin/expect -f
 set user zhangbiao
 set host 122.204.129.3
 set password zb6286409
 set timeout -1

 spawn ssh -Y $user@$host
 expect "*assword:*"
 send "$password\r"
 expect "*$*"
 send "tcsh\r"
 interact
 expect eof
