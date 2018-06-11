#!/bin/bash -e

## Install Git and Puppet
# wget -O /tmp/puppetlabs.deb http://apt.puppetlabs.com/puppetlabs-release-`lsb_release -cs`.deb
# dpkg -i /tmp/puppetlabs.deb
yum -y install git-core puppet

# Clone the 'puppet' repo
cd /etc
mv puppet/ puppet-bak
git clone http://github.com/ananthulasrikar/puppet.git /etc/puppet

# Run Puppet initially to set up the auto-deploy mechanism
puppet apply /etc/puppet/manifests/site.pp --modulepath /etc/puppet/modules:/etc/puppet/plugins
