FROM zabbix/zabbix-server-mysql
MAINTAINER Cao Xiaoqi <xqcao@thoughtworks.com>

ADD . /var/lib/zabbix
EXPOSE 3000
