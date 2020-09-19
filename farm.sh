#!/usr/bin/expect -f
 set user zhouyingjie
 set host 122.204.129.3
 set password zyj75959707
 set timeout -1

 spawn ssh -AY $user@$host
 expect "*assword:*"
 send "$password\r"
 interact
 expect eof
