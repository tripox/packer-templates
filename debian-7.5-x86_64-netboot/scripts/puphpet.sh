#!/bin/bash

mkdir -p '/.puphpet-stuff/shell'

wget --quiet --tries=5 --connect-timeout=10 --no-check-certificate  -O '/.puphpet-stuff/shell/os-detect.sh' 'https://raw.github.com/puphpet/puphpet/master/src/Puphpet/MainBundle/Resources/views/manifest/puphpet/shell/os-detect.sh'
wget --quiet --tries=5 --connect-timeout=10 --no-check-certificate  -O '/.puphpet-stuff/shell/initial-setup.sh' 'https://raw.github.com/puphpet/puphpet/master/src/Puphpet/MainBundle/Resources/views/manifest/puphpet/shell/initial-setup.sh'
wget --quiet --tries=5 --connect-timeout=10 --no-check-certificate  -O '/.puphpet-stuff/shell/update-puppet.sh' 'https://raw.github.com/puphpet/puphpet/master/src/Puphpet/MainBundle/Resources/views/manifest/puphpet/shell/update-puppet.sh'

chmod +x '/.puphpet-stuff/shell/os-detect.sh'
chmod +x '/.puphpet-stuff/shell/initial-setup.sh'
chmod +x '/.puphpet-stuff/shell/update-puppet.sh'

. '/.puphpet-stuff/shell/initial-setup.sh' '/.puphpet-stuff'
. '/.puphpet-stuff/shell/update-puppet.sh'
