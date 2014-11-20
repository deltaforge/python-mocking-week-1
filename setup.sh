#!/bin/bash

yum install -y vim git centos-release-SCL wget
yum install -y python33

cat >/etc/profile.d/enablepython33.sh <<EOL
#!/bin/bash
source /opt/rh/python33/enable
#export X_SCLS="`scl enable python33 'echo $X_SCLS'`"
EOL

chmod +x /etc/profile.d/enablepython33.sh
source /etc/profile

wget https://raw.githubusercontent.com/pypa/pip/master/contrib/get-pip.py
python get-pip.py

pip install boto
