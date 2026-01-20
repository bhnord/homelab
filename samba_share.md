## Samba Share Setup:
```
[shared]
comment = Pi Server
writeable = yes
browsable = yes
guest ok = no
path = /mnt/ext_hdd/shared
valid users = sambauser
force user = sambauser
```
