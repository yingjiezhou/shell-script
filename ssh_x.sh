#!/usr/bin/expect -f
 set user xiuxiujiang
 set host 10.149.64.127
 #set host 192.168.122.1
 
 set password jiang123
 set timeout -1

 spawn ssh -AY $user@$host
 expect "*assword:*"
 send "$password\r"
 interact
 expect eof
