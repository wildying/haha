FROM rhel7
EXPOSE 80
COPY dvd.repo /etc/yum.repos.d/dvd.repo
RUN rpmdb --rebuilddb && yum install -y httpd && yum clean all
COPY index.html /var/www/html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
