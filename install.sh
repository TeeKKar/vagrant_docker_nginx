#!/bin/bash

yum update -y
yum install epel-release -y
yum install python-pip -y
pip install docker ansible