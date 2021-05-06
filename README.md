# tkbvmwiki
# TKB offline codecorner wiki vagrant/ansible code

```
git clone git@github.com:rdkeijzeror/tkbvmwiki.git
or
git https://github.com/rdkeijzeror/tkbvmwiki.git
cp /backup/tkb_wiki_????????.tgz tkb_wiki.tgz
vagrant up
```
 
## Description
This is creating a virtual machine with PHP7 for use with backups of the wiki in PHP7 format  
There is a release for the wiki in PHP5 format taged v1_for_php5   
You can clone this release and switch to the tag v1_for_php5 or download the source code in the Releases page of this repo.  
Contains everything needed except the tkb_wiki.tgz which should be  
copied from the latest tkb_wiki_????????.tgz which was created on  
the codecorner server or from a backup directory on the T share or the Teams site.  
The IP of the server is 192.168.33.20 accessible through   
ssh and http  

The tkb_wiki_????????.tgz is created the following way  
  cd /home/groups/tkb  
  tar cvfz tkbwiki$(date +%Y%m%d).tgz  
After that the file is moved to the docs directory from where it can be downloaded  
You can also request a simular tar file from codecorner support.  
The tar containse the compleet DokuWiki for the group.  

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


