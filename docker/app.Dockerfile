
# Dockerfile.dev
# FROM ruby:2.4.5 as builder
FROM ruby:2.6.3 as builder

# ENV BUNDLE_PATH /bundle
# ENV RAILS_ROOT /myapp

# nothanks RUN bundle config --global frozen 1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs mc msmtp \
  && echo "alias ll='ls -la'" >>   ~/.bashrc ; chmod ugo+rw  ~/.bashrc \
  && echo "alias psg='ps -ef|grep '" >>   ~/.bashrc  

# RUN   apt-get -y install  postfix  
# RUN   apt-get -y install sendmail-bin sendmail sendmail-cf m4     mailutils    

COPY Gemfile Gemfile.lock /app/
RUN cd /app &&  gem install bundler -v "~>2.0" && bundle install

EXPOSE 3000

# Step 6/12 : Run sed -i '/nameserver.*/i nameserver 8.8.8.8'  /etc/resolv.conf
# sed: cannot rename /etc/sedNSM88D: Device or resource busy
# ERROR: Service 'deb' failed to build: The command '/bin/sh -c sed -i '/nameserver.*/i nameserver 8.8.8.8'  /etc/resolv.conf' returned a non-zero code: 4
# albe@pmdsdata7:/srv/file/test/482dkrcollection/debian-mail08$
# Run sed -i '/nameserver.*/i nameserver 8.8.8.8'  /etc/resolv.conf 

RUN line=$(head -n 1 /etc/hosts) \
  && line2=$(echo $line | awk '{print $2}') 
RUN echo " pmdsdata7-dkr-01.local $line $line2.localdomain" >> /etc/hosts \
  && echo "pmdsdata7-dkr-01.local" > /etc/hostname 

# && make -C /etc/mail 

# Run service postfix restart

# RUN   mkdir -p /app && mkdir  /app/shared \
#   && mkdir  /app/shared/log && mkdir  /app/shared/pids && mkdir  /app/shared/sockets 

RUN echo 'set mta=/usr/bin/msmtp\n\
  \n'\
  >/etc/mail.rc
RUN cat /etc/mail.rc

RUN echo '\n\
  # A system wide configuration file is optional.\n\
  # If it exists, it usually defines a default account.\n\
  # This allows msmtp to be used like /usr/sbin/sendmail.\n\
  account default\n\
  # The SMTP smarthost\n\
  host MESG01.stackpole.ca\n\
  from dgleba@stackpole.com\n\
  \n\
  # Syslog logging with facility LOG_MAIL instead of the default LOG_USER\n\
  syslog LOG_MAIL\n\
  '>/etc/msmtprc


WORKDIR /app

# COPY docker/entry.sh /app 
# Run  chmod +x /app/entry.sh
# ENTRYPOINT ["/app/docker/entry.sh"]

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]

