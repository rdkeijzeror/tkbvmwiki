# tkbvmwiki
# TKB offline codecorner wiki vagrant/ansible code

```
git clone https://github.com/rdkeijzeror/tkbvmwiki.git
vagrant up
```
 
## Description
Contains everything needed except the tkb_wiki.tgz which should be
copied from the latest tkb_wiki_????????.tgz which was created on
the codecorner server or from a backup directory on the T or P share.
The IP of the server is 192.168.33.20 accessible through 
ssh and http

You need VirtualBox installed and Vagrant

After copying the tkb_wiki_????????.tgz to tkb_wiki.tgz in this directory
You can create and start the VM with the command 
```
vagrant up
```
when this is finished you can connect to the dokuwiki with the link
at the end of this document.

To remove the VM you can run the command
```
vagrant destroy
```

Dokuwiki accesible through http://192.168.33.20/wiki


