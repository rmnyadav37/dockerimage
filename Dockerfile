FROM ubuntu
RUN apt-get -y update 
RUN apt-get -y install git 
RUN apt-get install wget -y
RUN apt-get install unzip -y
RUN apt-get install apache2 -y
RUN wget https://www.free-css.com/assets/files/free-cas-templates/download/page265/shree.zip
RUN unzip shree.zip
RUN mv /shree/* /var/www/html/
CMD httpd -D FOREGROUND
