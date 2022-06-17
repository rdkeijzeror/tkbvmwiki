# Some extra Notes

## Older version of software
If you want to use an older version of this scripts e.g. use php5 instead of php7
Then you can checkout the wanted version with the following command and after that you can continue as written in the README.md


```
git checkout tags/v1_for_php5 v1_for_php5
```

## using adminwiki instead of tkbwiki
If you want to use the adminwiki instead of the tkbwiki.
You should first use the php5 version of the software.
The admin-wiki_????????.tgz is created the following way  
  cd /var/www/admin-wiki.smart-java.nl
  tar cvfz admin-wiki_(date +%Y%m%d).tgz newwiki

Then you should copy the adminwiki tarball to the to tkb_wiki.tgz

After that just run vagrant up as with the tkbwiki

You can not run both wiki's at the sametime same host
Unless you change the 192.168.33.20 to e.g. 192.168.33.21 in the Vagrantfile
The link will ofcourse change too

Dokuwiki accesible through http://192.168.33.20/newwiki

