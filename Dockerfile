FROM centos:7
LABEL  maintener="AFRICA my awesome and loved CONTINENT please pay tribute to it"
RUN yum -y update 
RUN yum install -y httpd 
COPY index.html  /var/www/html/
EXPOSE 80
ENTRYPOINT [ " /usr/sbin/httpd"  ] 
CMD [ " -D ", "FOREGROUND" ] 

