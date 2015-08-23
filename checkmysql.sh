#!/bin/bash
 /usr/bin/mysqladmin --user=mysqluser --password=mysqlpassword ping| grep 'mysqld is alive' > /dev/null 2>&1
 if [ $? != 0 ]
 then
     sudo service mysql start
     echo Restarting at `date` >> /var/log/mysqlrestart.log
 fi

