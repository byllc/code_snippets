1) Make sure you have following information:
==> Windows username and password to access share name ==> Sharename (such as //server/share) or IP address
==> root level access on Linux


2) Login to Linux as a root user (or use su command)

3) Create the required mount point:
# mkdir -p /mnt/ntserver

4) Use the mount command as follows:
# mount -t cifs //ntserver/download -o username=vivek,password=myPassword /mnt/ntserver
Use following command if you are using Old version such as RHEL <=4 or Debian <= 3:
# mount -t smbfs -o username=vivek,password=D1W4x9sw //ntserver/download /mnt/ntserver

5) Access Windows 2003/2000/NT share using cd and ls command:
# cd /mnt/ntserver; ls -l

Where,
-t smbfs : File system type to be mount (outdated, use cifs)
-t cifs : File system type to be mount
-o : are options passed to mount command, in this example I had passed two options. First argument is password (vivek) and second argument is password to connect remote windows box

//ntserver/download : Windows 2000/NT share name
/mnt/ntserver Linux mount point (to access share after mounting)



