FROM postgres:10.11
RUN apt-get update && apt-get install -y vim
RUN mv /etc/localtime /etc/localtime.old \
 && ln -s /usr/share/zoneinfo/Europe/Warsaw /etc/localtime \
 && localedef -i pl_PL -c -f UTF-8 -A /usr/share/locale/locale.alias pl_PL.UTF-8
ENV LANG pl_PL.utf8
ENV PGPORT 5400
EXPOSE 5400
