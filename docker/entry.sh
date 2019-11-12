#!/usr/bin/env bash
# https://github.com/panubo/docker-postfix

# set -e
# [ "${DEBUG:-false}" == 'true' ] && set -x

# sed -i "/nameserver.*/i nameserver 8.8.8.8"  /etc/resolv.conf 
# cat /etc/resolv.conf | sed "/nameserver.*/i nameserver 8.8.8.8"> /tmp/tmpflb 
# cp /tmp/tmpflb /etc/resolv.conf

# sendmail slow to load. put this line first in /etc/hosts
# https://www.linuxquestions.org/questions/linux-general-1/sendmail-takes-forever-to-start-up-143704/
#  line=$(head -n 1 /etc/hosts) \
#   && line2=$(echo $line | awk '{print $2}') 
#  cp -a /etc/hosts /tmp/tmphosts
#  echo " pmdsdata7-dkr-01.local $line $line2.localdomain" >> /etc/hosts 
#  cat /tmp/tmphosts >> /etc/hosts

#  echo "pmdsdata7-dkr-01.local" > /etc/hostname 

echo "nameserver 10.4.1.200" >>/etc/resolv.conf
# echo "nameserver 8.8.8.8" >>/etc/resolv.conf

fil=/etc/hosts
cp $fil $fil$(date +"__%Y.%m.%d_%H.%M.%S")
tee  $fil <<- 'HEREDOC'
127.0.0.1 localhost
HEREDOC
echo "127.0.1.1 brail484b53.local" >>/etc/hosts


# Don't seem to need the backticks.. sed -i "/MAILER_DEF.*/i define(`SMART_HOST',`[MESG01.stackpole.ca]')dnl"  /etc/mail/sendmail.mc 
if  grep 'MESG01.stackpole.c' /etc/mail/sendmail.mc ; then
  # sed -i "/MAILER_DEF.*/i define('SMART_HOST','MESG01.stackpole.ca')dnl"  /etc/mail/sendmail.mc 
  sed -i "/SMART_HOST/d"  /etc/mail/sendmail.mc 
 
fi
# Don't seem to need the backticks.. sed -i "/MAILER_DEF.*/i define(`SMART_HOST',`[MESG01.stackpole.ca]')dnl"  /etc/mail/sendmail.mc 
if ! grep '10.5.1.210' /etc/mail/sendmail.mc ; then
  sed -i "/MAILER_DEF.*/i define('SMART_HOST','10.5.1.210')dnl"  /etc/mail/sendmail.mc 
fi

if ! grep 'brail484b53.local' /etc/mail/sendmail.mc ; then
  sed -i "/MAILER_DEF.*/i define('confDOMAIN_NAME', 'brail484b53.local')dnl"  /etc/mail/sendmail.mc 
fi

make -C /etc/mail 

/etc/init.d/sendmail reload 

if [ -f tmp/pids/server.pid ]; then
  rm tmp/pids/server.pid
fi

echo "Running command $*"
exec "$@"
