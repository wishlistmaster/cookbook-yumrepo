maintainer       "Eric G. Wolfe"
maintainer_email "wolfe21@marshall.edu"
license          "Apache 2.0"
description      "Installs and configures EPEL, ELFF, Dell, and VMware yum repositories."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "3.0.0"
depends          "yum"
name             "yumrepo"
recipe "yumrepo::default", "Installs EPEL, and Dell repositories."
recipe "yumrepo::corporate", "Example recipe for deploying rpms from an internal yum.example.com/yum repo"
recipe "yumrepo::dell", "Installs Dell OpenManage and optionatlly firmware components."
recipe "yumrepo::rbel", "Ruby and Opschef packages for RHEL"
recipe "yumrepo::vmware-tools", "Installs VMware (vmware-tools) repository"
recipe "yumrepo::vmware-tools-upgrade", "Upgrades vmware-tools 4.x components to 5.0u1"
recipe "yumrepo::percona", "Percona MySQL repository"
recipe "yumrepo::postgresql", "PostgreSQL RPMs from pgrpms.org"
recipe "yumrepo::zenoss", "YUM repo for ZenOss stable"
recipe "yumrepo::zeromq", "YUM repo for Zeromq 3.2.* series"
recipe "yumrepo::jenkins", "Jenkins CI"

%w{ redhat centos scientific amazon oracle }.each do |os|
  supports os, ">= 5.0"
end
