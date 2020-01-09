#!/bin/bash

sudo apt-get install -y libpq-dev libpcap0.8-dev
gpg --keyserver hkp://keys.gnupg.net:80 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
#sudo cp /home/admin/.rvm/bin/rvm-shell /etc/profile.d/rvm.sh
#source /etc/profile.d/rvm.sh
export PATH=$PATH:/home/admin/.rvm/bin
git clone https://github.com/rapid7/metasploit-framework
cd metasploit-framework
rvm install ruby-`(cat .ruby-version)`
echo 'gem: --no-ri --no-rdoc' > ~/.gemrc
export PATH=$PATH:/home/admin/.rvm/rubies/ruby-2.6.5/bin/
gem install bundler --force
bundle install
