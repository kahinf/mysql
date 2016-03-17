#!/bin/bash

set -e
set -u

# add our user and group first to make sure their IDs get assigned consistently, regardless of whatever dependencies get added
groupadd -r mysql && useradd -r -g mysql mysql

# Install Base MySQL
apt-get -y update
apt-get clean all
apt-get -y install mysql-server