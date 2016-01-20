!/bin/bash
RESTART="/sbin/service httpd restart"


# uncomment if you are using Debian / Ubuntu Linux
#RESTART="sudo /etc/init.d/httpd -k restart"

#path to pgrep command
PGREP="/usr/bin/pgrep"

# Httpd daemon name,
# Under RHEL/CentOS/Fedora it is httpd
# Under Debian 4.x it is apache2
HTTPD="httpd"

# find httpd pid
$PGREP ${HTTPD}

#if [ $? -ne 0 ] # if apache not running
#then
# restart apache
$RESTART
#fi
