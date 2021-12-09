#!/bin/sh

# XXX mostly taken from Kali's fork of debian-installer/build/preseed.cfg
# XXX duplicated at live-build-config/kali-config/common/includes.installer/preseed.cfg

set -e

debconf-set-selections -v << EOF
# Disable popularity-contest
popularity-contest popularity-contest/participate boolean false

# Random other questions
console-setup console-setup/charmap47 select UTF-8
samba-common samba-common/dhcp boolean false
macchanger macchanger/automatically_run boolean false
kismet-capture-common kismet-capture-common/install-users string
kismet-capture-common kismet-capture-common/install-setuid boolean true
wireshark-common wireshark-common/install-setuid boolean true
sslh sslh/inetd_or_standalone select standalone
atftpd atftpd/use_inetd boolean false
EOF
