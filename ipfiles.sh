#!/bin/bash
PIP=${curl -sL http://169.254.169.254/latest/meta-data/public-ipv4/}
PVIP=${curl -sL http://169.254.169.254/latest/meta-data/local-ipv4/}
PVHNAME=${curl -sL http://169.254.169.254/latest/meta-data/hostnaame/}
PBHNAME=${curl -sL http://169.254.169.254/latest/meta-data/public-hostname/}
sleep 5s
echo "my Server Public Hostname ${PBHNAME} and Privat HOstname is ${PVHNAME}"
