#!/bin/bash

#make all salt keys the same on centos6 nodes

   mkdir -p /etc/salt/pki/minion
   curl -o /etc/salt/pki/minion/minion.pem  http://eofe-service002/custom/minion.pem
   chmod 400 /etc/salt/pki/minion/minion.pem
   curl -o /etc/salt/pki/minion/minion.pub  http://eofe-service002/custom/minion.pub
   chmod 644 /etc/salt/pki/minion/minion.pub

service salt-minion restart
