#!/bin/sh

set -xe

su git -s /bin/sh -c 'ssh-keygen -f ~/.ssh/id_ecdsa -N "" -t ecdsa -b 521 -C "Gitea Host Key"'
su git -s /bin/sh -c 'cat ~/.ssh/id_ecdsa.pub >> ~/.ssh/authorized_keys'
su git -s /bin/sh -c 'chmod 600 ~/.ssh/authorized_keys'
