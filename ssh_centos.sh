#!/usr/bin/expect -f
 set user zyj
 set host 10.191.10.163
 #set host 192.168.122.1
 
 set password 202343
 set timeout -1

 spawn ssh -AY $user@$host
 expect "*assword:*"
 send "$password\r"
 interact
 expect eof
