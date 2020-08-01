VBoxManage startvm SSH_Enabled_Docker_server --type headless
ping 127.0.0.1 -n 6 > nul
ssh lasith-niro@127.0.0.1 -X