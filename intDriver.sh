#!/bin/bash

#驱动下载404 可以用迅雷下载,上传服务器后本地执行,注销wget
wget https://downloadmirror.intel.com/24411/eng/i40e-2.10.19.30.tar.gz && \
rpmbuild -tb i40e-2.10.19.30.tar.gz && \
rpm -Uvh /root/rpmbuild/RPMS/x86_64/i40e-2.10.19.30-1.x86_64.rpm && \
sudo rm -rf i40e-2.10.19.30.tar.gz && \
sudo rm -rf /root/rpmbuild && \
rmmod i40e && modprobe i40e && systemctl restart network
